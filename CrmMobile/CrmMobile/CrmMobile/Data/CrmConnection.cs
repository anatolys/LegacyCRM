//using Android.Content.Res;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace CrmMobile
{
    public class CrmConnection
    {
        private string authorizationKey;
        private string loginName;
        public string url;
        private string domain;
        private string pass;

        //Create http client
        public async Task<HttpClient> GetClient()
        {
            HttpClient client = new HttpClient();

            var settings = await App.Database.GetSettingAsync();
            if (settings.Count != 0)
            {
                loginName = settings[0].LoginName;
                domain = settings[0].Domain;
                pass = settings[0].Password;
            }
            else
            {
                await App.Current.MainPage.DisplayAlert("", "Вначале надо заполнить и сохранить параметры", "", "OK");
                //Should be redirection to settings page (if no settings exists)
                await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new SettingsPage());
            }
            authorizationKey = string.Format("{0}|{1}|{2}", loginName.ToBase64(), pass.ToBase64(), domain.ToBase64());

            client.DefaultRequestHeaders.Add("X-CRM-AUTH", authorizationKey);
            client.DefaultRequestHeaders.Add("Accept", "application/json");
            return client;
        }

        //Get visits for selected date
        public async Task<IEnumerable<VisitItem>> GetVisitsFromWeb(DateTime selectedDate)
        {
            HttpClient client = await GetClient();

            var settings = await App.Database.GetSettingAsync();
            if (settings.Count != 0)
            {
                url = "http://" + settings[0].URL;
            }
            else
            {
                //Should be redirection to settings page (if no settings exists)
                return null;
            }

            var result = await client.GetStringAsync(url + @"/Visits/" + selectedDate.ToString("yyyy-MM-dd"));
            if (result != null)
            {
                //Save visits to local DataBase

            }
            return JsonConvert.DeserializeObject<IEnumerable<VisitItem>>(result);
        }

    }
}
