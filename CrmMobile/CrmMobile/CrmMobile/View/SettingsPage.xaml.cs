using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
//using CrmMobile.Models;
using CrmMobile;
using SQLite;
using System.Collections.ObjectModel;

namespace CrmMobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class SettingsPage : ContentPage
	{
        public SettingsPage()
        {
            InitializeComponent();
		}

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            SettingItem item = new SettingItem();

            var result = await App.Database.GetSettingAsync();
            //Default
            if (result.Count == 0)
            {
                item.Id = 0;
                item.LoginName = "";
                item.Password = "";
                item.URL = "crm.SomeTrading.ru/crm";
                item.Domain = "SMALLSomeTradingCRM";
#if DEBUG
                item.LoginName = "SomeTradingmerch1";
                item.Password = "12345678";
                item.URL = "192.168.1.36/WebApi";
#endif
            }
            else
            {
                item = result[0];
            }
            BindingContext = item;
        }

        async void OnSaveClicked(object sender, EventArgs e)
        {
            var item = (SettingItem)BindingContext;
            await App.Database.SaveSettingAsync(item);
            //var result = await App.Database.GetSettingAsync();
            //item = result[0];
            await Navigation.PopAsync();
        }

    }
}