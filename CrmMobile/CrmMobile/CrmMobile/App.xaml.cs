using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace CrmMobile
{
	public partial class App : Application
    {
        //public static DbRepository DbRepo { get; private set; }
        static CrmDatabase database;
		//public App(string dbPath)
        public App()
        {
			InitializeComponent();


            MainPage = new NavigationPage(new MainPage());

        }
        public static CrmDatabase Database
        {
            get
            {
                if (database == null)
                {
                    database = new CrmDatabase(DependencyService.Get<IFileHelper>().GetLocalFilePath("CrmData.db3"));
                }
                return database;
            }
        }
        protected override void OnStart ()
		{
            // Handle when your app starts
        }

		protected override void OnSleep ()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume ()
		{
			// Handle when your app resumes
		}
	}
}
