//using CrmMobile.Models;
using CrmMobile;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace CrmMobile
{
	public partial class MainPage : ContentPage
	{

        public MainPage()
		{
            InitializeComponent();
            BindingContext = new VisitsViewModel();
            datepicker.MinimumDate = DateTime.Now.AddDays(-30);
            datepicker.MaximumDate = DateTime.Now.AddDays(7);
        }

        public MainPage(DateTime visitDate)
        {
            InitializeComponent();
            BindingContext = new VisitsViewModel(visitDate);
            datepicker.MinimumDate = DateTime.Now.AddDays(-30);
            datepicker.MaximumDate = DateTime.Now.AddDays(7);
        }

        async void OnRefresh(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new DataExchangePage());
        }

        async void OnAddNewVisit(object sender, EventArgs e)
        {
            await Navigation.PushAsync(
                new AddVisitPage());
        }

        async void OnSettings(object sender, EventArgs e)
        {

            await Navigation.PushAsync(new SettingsPage());
        }

        async void OnAbout(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new About());
        }

        async void OnVisitCard(object sender, ItemTappedEventArgs e)
        {
            var item = (VisitItem)e.Item;
            Guid visitGuid = item.VisitGUID;
            //await Navigation.PushAsync(new VisitCardPage((VisitItem)e.Item), visitGuid);
            await Navigation.PushAsync(new VisitCardPage(visitGuid));
        }

    }
}
