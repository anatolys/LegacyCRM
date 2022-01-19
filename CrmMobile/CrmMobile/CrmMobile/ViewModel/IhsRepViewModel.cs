using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace CrmMobile
{
    class IhsRepViewModel : INotifyPropertyChanged
    {
        void OnPropertyChanged([CallerMemberName] string name = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        public event PropertyChangedEventHandler PropertyChanged;

        public ObservableCollection<IhsReportItem> IhsRepItems { get; set; }
        private IhsReportItem selectedReportItem;
        private Guid reportGuid;

        //Set properties to hide unnessary buttons
        public bool IsSaveButtonVisible { get; set; }
        public bool IsDeleteButtonVisible { get; set; }
        public bool IsGoInfoButtonVisible { get; set; }
        public bool IsGoRefreshButtonVisible { get; set; }
        public bool IsGoSettingsButtonVisible { get; set; }

        public ICommand AddItemCommand { get; private set; }
        public ICommand GoBackCommand { get; private set; }


        public IhsRepViewModel(Guid visitGuid)
        {
            reportGuid = visitGuid;
            IsSaveButtonVisible = false;
            IsDeleteButtonVisible = false;
            IsGoSettingsButtonVisible = false;
            IsGoInfoButtonVisible = false;
            IsGoRefreshButtonVisible = false;


            AddItemCommand = new Command(AddRepItemAsync);
            GoBackCommand = new Command(GoBackAsync);
            LoadIhsReports(reportGuid);
        }

        async void GoBackAsync()
        {
            await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new VisitCardPage(reportGuid));
        }

        async void AddRepItemAsync()
        {
            selectedReportItem = null;
            await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new IhsAddEditItemPage(reportGuid, selectedReportItem));
        }

        private async void LoadIhsReports(Guid visitGuid)
        {
            IhsRepItems = new ObservableCollection<IhsReportItem>();
            var result = await App.Database.GetIhsRecordsForVisit(visitGuid);
            if (result != null)
            {
                foreach (var r in result)
                {
                    IhsRepItems.Add(r);
                }
            }
        }
    }
}
