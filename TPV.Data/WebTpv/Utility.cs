using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TpvData;

namespace WebTpv
{
    internal class Utility
    {
        //Check credentials
        internal static bool LoginValidation(string login, string pass)
        {
            bool result = false;
            using (TpvEntities entities = new TpvEntities())
            {
                var match = entities.Users.Where(u => u.UserLoginName == login && u.UserPassword == pass).FirstOrDefault();
                if (match != null)
                {
                    result = true;
                }
            }
            return result;
        }

        //Get user subrole id
        internal static int GetUserSubroleId(string login)
        {
            int subroleId = 0;
            using (TpvEntities entities = new TpvEntities())
            {
                var match = entities.Users.Where(u => u.UserLoginName == login).FirstOrDefault();
                if (match != null)
                {
                    subroleId = match.UserSubroleID;
                }
            }
            return subroleId;
        }

        //Get user supervisor login name
        internal static string GetUserSupervisorLogin(string login)
        {
            string superLoginName = "";
            using (TpvEntities entities = new TpvEntities())
            {
                var match = entities.Users.Where(u => u.UserLoginName == login).FirstOrDefault();
                if (match != null)
                {
                    superLoginName = match.SupervisorUserLoginName;
                }
            }
            return superLoginName;
        }

    }
}