using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using TpvData;

namespace WebTpv.Controllers
{
    public class VisitsController : ApiController
    {
        int routeId;
        DateTime first_date_of_month;
        int first_day_of_month_weekday;
        int week_number;
        DateTime first_date_of_period;
        int weekday_id;
        List<VisitItem> visits = new List<VisitItem>();
        string authString;
        bool authorized = false;
        int userSubroleId = 0;
        string superLoginName = "";

        [Route("Visits/{dateOfVisit}")]
        public IEnumerable<VisitItem> Get(string DateOfVisit)
        {
            Debug.AutoFlush = true;
            var request = Request;
            var headers = request.Headers;
            string loginName = "";
            string password = "";

            //Get data from request header
            if (headers.Contains("X-CRM-AUTH"))
            {
                authString = headers.GetValues("X-CRM-AUTH").FirstOrDefault();
                Debug.WriteLine(authString);
                string[] auth_data = authString.Split(new char[] { '|' }, StringSplitOptions.None);
                if (auth_data.Length != 3)
                {
                    throw new Exception();
                }
                try
                {
                    string user_name = FromBase64(auth_data[0]);
                    password = FromBase64(auth_data[1]);
                    string domain = FromBase64(auth_data[2]);
                    loginName = domain + @"\" + user_name;
                    Debug.WriteLine(loginName);
                }
                catch
                {
                    throw new Exception();
                }
            }
            else
            {
                throw new Exception();
            }

            //Check user credentials
            authorized = Utility.LoginValidation(loginName, password);
            if (!authorized)
            {
                var resp = new HttpResponseMessage(HttpStatusCode.Forbidden)
                {
                    Content = new StringContent(string.Format("User name or password are not valid {0}", loginName)),
                    ReasonPhrase = "Login or password are not valid"
                };
                visits = null;
                throw new HttpResponseException(resp);
            }

            //Get user subrole ID
            userSubroleId = Utility.GetUserSubroleId(loginName);

            //Get supervisor login name 
            superLoginName = Utility.GetUserSupervisorLogin(loginName);

            //Check if user is a supervisor

            //Get list of visits for the date = dateOfVisit
            DateTime dateOfVisit = DateTime.Parse(DateOfVisit);
            using (TpvEntities entities = new TpvEntities())
            {
                //At first getting route id
                var matchRoute = entities.Routes.Where(r => r.UserLoginName == loginName 
                && r.RouteDateFrom <= dateOfVisit 
                && r.RouteDateTo >= dateOfVisit).FirstOrDefault();

                if (matchRoute != null)
                {
                    routeId = matchRoute.RouteID;
                }

                //Then getting clietn offices id's for the date
                first_date_of_month = dateOfVisit.AddDays(-dateOfVisit.Day + 1);
                if (first_date_of_month.DayOfWeek == DayOfWeek.Sunday)
                {
                    first_day_of_month_weekday = 6;
                }
                else
                {
                    first_day_of_month_weekday = (int)first_date_of_month.DayOfWeek - 1;
                }
                first_date_of_period = first_date_of_month.AddDays(-first_day_of_month_weekday);
                week_number = ((int)(dateOfVisit - first_date_of_period).TotalDays / 7) % 4 + 1;
                
                if (dateOfVisit.DayOfWeek == DayOfWeek.Sunday)
                {
                    weekday_id = 7;
                }
                else
                {
                    weekday_id = (int)dateOfVisit.DayOfWeek;
                }
                //List of offices ids for selected date
                var matchOffices = entities.RouteClientOffices.Where(o => o.RouteID == routeId 
                && o.RouteClientOfficeDayOfWeek == weekday_id 
                && o.RouteClientOfficeWeekNumber == week_number);

                //Populate list of visits
                foreach (var office in matchOffices)
                {
                    visits.Add(new VisitItem {
                        VisitGUID = Guid.NewGuid(),
                        UserLoginName = loginName,
                        ClientOfficeID = office.ClientOfficeID,
                        UserSubroleID = userSubroleId,
                        SupervisorUserLoginName = superLoginName,
                        VisitDate = dateOfVisit,
                        ModifiedBy = "VisitsController",
                        ModifiedWhen = DateTime.Now,
                        VisitMadeBySupervisor = userSubroleId == 202 ? 1 : 0,
                        VisitStartedWhen = DateTime.Now,
                        VisitFinishedWhen = DateTime.Now,
                        CreatedInWeb = 0,
                        InRoute = 1,
                        VisitShortAddress = office.ClientOffice.ClientOfficeShortName,
                        VisitAddress = office.ClientOffice.ClientOfficeAddress,
                        VisitClient = office.ClientOffice.Client.ClientName,
                        VisitCity = office.ClientOffice.City.CityName,
                    });
                }

            }
            return visits;
        }

        private static string FromBase64(string input)
        {
            return Encoding.UTF8.GetString(Convert.FromBase64String(input));
        }

    }
}
