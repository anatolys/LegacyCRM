using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace CrmMobile
{
    public class VisitCardViewModel : INotifyPropertyChanged
    {
        private const string FINISH_VISIT = "ЗАВЕРШИТЬ ВИЗИТ";
        private const string REOPEN_VISIT = "ВОЗОБНОВИТЬ ВИЗИТ";
        private const string VISIT_SENT_AND_CLOSED = "ВИЗИТ ОТПРАВЛЕН И ЗАКРЫТ";

        void OnPropertyChanged([CallerMemberName] string name = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        public event PropertyChangedEventHandler PropertyChanged;

        //Declare properties to hide unnecessary buttons
        public bool IsSaveButtonVisible { get; set; }
        public bool IsAddItemButtonVisible { get; set; }
        public bool IsDeleteButtonVisible { get; set; }
        public bool IsGoInfoButtonVisible { get; set; }
        public bool IsGoSettingsButtonVisible { get; set; }
        public bool IsGoRefreshButtonVisible { get; set; }

        //Command buttons declarations
        public ICommand GoBackCommand { get; set; }
        public ICommand CloseVisitCommand { get; private set; }

        public Guid visitGuid;
        private string closeBtnText;
        public string CloseBtnText {
            get
            {
                return closeBtnText;
            }
            set
            {
                closeBtnText = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(CloseBtnText)));
            }
        }

        private bool isClosed;
        public bool IsClosed
        {
            get
            {
                return isClosed;
            }
            set
            {
                isClosed = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(IsClosed)));
            }
        }

        private DateTime _visitDate;
        public DateTime VisitCardDate
        {
            get
            {
                return _visitDate;
            }
            set
            {
                _visitDate = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(VisitCardDate)));
            }
        }

        private string _visitClient;
        public string VisitCardClient
        {
            get
            {
                return _visitClient;
            }
            set
            {
                _visitClient = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(VisitCardClient)));
            }
        }

        private string _visitShortAddress;
        public string VisitCardShortAddress
        {
            get
            {
                return _visitShortAddress;
            }
            set
            {
                _visitShortAddress = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(VisitCardShortAddress)));
            }
        }

        private string _visitAddress;
        public string VisitCardAddress
        {
            get
            {
                return _visitAddress;
            }
            set
            {
                _visitAddress = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(VisitCardAddress)));
            }
        }

        public VisitCardViewModel(Guid selectedGuid)
        {
            IsSaveButtonVisible = false;
            IsAddItemButtonVisible = false;
            IsDeleteButtonVisible = false;
            IsGoInfoButtonVisible = false;
            IsGoSettingsButtonVisible = false;
            IsGoRefreshButtonVisible = false;

            GoBackCommand = new Command(GoBackAsync);

            visitGuid = selectedGuid;
            CheckIfVisitClosedAsync();
            CloseVisitCommand = new Command(CloseVisitAsync);
            LoadVisitCard(visitGuid);
        }

        //Tool bar go back button
        async void GoBackAsync()
        {
            await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new MainPage(VisitCardDate));
        }

        //Load visits for the data (in fact it's route )
        private async void LoadVisitCard(Guid guid)
        {
            //Check if visit has reports
            var hasReports = await App.Database.HasVisitReportsAsync(guid);
            if (!hasReports)
            {
                IsClosed = false;
                //CloseVisitAsync();
                CheckIfVisitClosedAsync();
            }
            var result = await App.Database.GetVisitByGuidAsync(guid);
            VisitCardDate = result.VisitDate;
            VisitCardClient = result.VisitClient;
            VisitCardShortAddress = result.VisitShortAddress;
            VisitCardAddress = result.VisitAddress;

        }

        async void CloseVisitAsync()
        {
            IsClosed = (bool)await App.Database.CloseVisitAsync(visitGuid);
            CloseBtnText = IsClosed ? REOPEN_VISIT : FINISH_VISIT;

        }

        async void CheckIfVisitClosedAsync()
        {
            IsClosed = (bool)await App.Database.IsVisitClosedAsync(visitGuid);
            CloseBtnText = IsClosed ? REOPEN_VISIT : FINISH_VISIT;
        }

    }
}
