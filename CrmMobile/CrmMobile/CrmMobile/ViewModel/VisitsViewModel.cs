using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace CrmMobile
{
    public class VisitsViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        void OnPropertyChanged([CallerMemberName] string name = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }

        //Groups of visits by status
        private const string NOT_STARTED = "НЕ НАЧАТЫ:";
        private const string IN_PROGRESS = "В РАБОТЕ:";
        private const string FINISHED = "ЗАВЕРШЕНЫ:";
        private const string SENT_TO_SERVER = "ОТПРАВЛЕНЫ НА СЕРВЕР:";

        //Set properties to remove unnecessary buttons from tool bar
        public bool IsDeleteButtonVisible { get; set; }
        public bool IsSaveButtonVisible { get; set; }
        public bool IsGoBackButtonVisible { get; set; }

        //Date of visits
        DateTime selectedDate = DateTime.Now.Date;
        public DateTime SelectedDate
        {
            get
            {
                return selectedDate;
            }
            set
            {
                if (selectedDate != value)
                {
                    selectedDate = value;
                    PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(SelectedDate)));
                }
                //Check and load visits from local db or from server
                LoadVisits();
            }
        }

        //Initiate commands
        public ICommand GoInfoCommand { get; private set; }
        public ICommand GoRefreshCommand { get; private set; }
        public ICommand GoSettingsCommand{ get; private set; }

        public ObservableCollection<VisitItem> Visits { get; set; }
        public ObservableCollection<GroupedVisitModel> grouped { get; set; }

        public CrmConnection crmConnection = new CrmConnection();

        private bool _isBusy;
        public bool IsBusy
        {
            get { return _isBusy; }
            set
            {
                _isBusy = value;
                OnPropertyChanged("IsBusy");
            }
        }

        //Init and load visits when datapicker value changed
        public VisitsViewModel()
        {
            IsGoBackButtonVisible = false;
            IsDeleteButtonVisible = false;
            IsSaveButtonVisible = false;

            GoInfoCommand = new Command(GoAboutAsync);

            Visits = new ObservableCollection<VisitItem>();
            grouped = new ObservableCollection<GroupedVisitModel>();
        }

        //Init and load visits when navigate from visit card
        public VisitsViewModel(DateTime selectedDate)
        {
            IsGoBackButtonVisible = false;
            IsDeleteButtonVisible = false;
            IsSaveButtonVisible = false;

            GoInfoCommand = new Command(GoAboutAsync);

            Visits = new ObservableCollection<VisitItem>();
            grouped = new ObservableCollection<GroupedVisitModel>();
            SelectedDate = selectedDate;
        }

        private async void LoadVisits()
        {
            await CheckVisitsForDate(SelectedDate);
        }

        async void GoAboutAsync()
        {
            await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new About());
        } 

        //Check if there are planned visits for the choosen date
        private async Task CheckVisitsForDate(DateTime SelectedDate)
        {
            try
            {
                //Visits = null;
                var result = await App.Database.GetVisitsFromDbAsync(SelectedDate);
                //Check on the server
                if (result.Count == 0)
                {
                    var answer = await App.Current.MainPage.DisplayAlert("","Визиты на " + SelectedDate.ToString("yyyy-MM-dd") + " скачайте с сервера", "ОК", "Не сейчас");
                    if (answer == true)
                    {
                        this.IsBusy = true;
                        //Connect to web api and download visits for the date
                        var response = await crmConnection.GetVisitsFromWeb(SelectedDate);
                        result = response.ToList();
                        Visits.Clear();
                        if (result.Count() == 0)
                        {
                            await App.Current.MainPage.DisplayAlert("", "На " + selectedDate.ToString("yyyy-MM-dd") + " визитов не запланировано", "", " OK ");
                        }
                        else
                        {
                            foreach (VisitItem resp in result)
                            {
                                Visits.Add(resp);
                                //Save every visit to local db
                                await App.Database.SaveVisitAsync(resp);
                            }

                        }
                    }
                }
                if (Visits != null)
                {
                    Visits.Clear();
                }
                else
                {
                    Visits = new ObservableCollection<VisitItem>();
                }
                if (grouped != null)
                {
                    Visits.Clear();
                    grouped.Clear();
                }
                else
                {
                    Visits = new ObservableCollection<VisitItem>();
                    grouped = new ObservableCollection<GroupedVisitModel>();
                }
                var toDoGroup = new GroupedVisitModel() { VisitStatusName = NOT_STARTED };
                var inProgressGroup = new GroupedVisitModel() { VisitStatusName = IN_PROGRESS };
                var doneGrope = new GroupedVisitModel() { VisitStatusName = FINISHED };
                var sentGroup = new GroupedVisitModel() { VisitStatusName = SENT_TO_SERVER };
                foreach (VisitItem res in result)
                {
                    if (!res.HasReports)
                    {
                        toDoGroup.Add(res);
                    }
                    if (res.HasReports && !res.IsColsed)
                    {
                        inProgressGroup.Add(res);
                    }
                    if (res.IsColsed && !res.IsSent)
                    {
                        doneGrope.Add(res);
                    }
                    if (res.IsSent)
                    {
                        sentGroup.Add(res);
                    }
                }
                grouped.Add(toDoGroup);
                grouped.Add(inProgressGroup);
                grouped.Add(doneGrope);
                grouped.Add(sentGroup);
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Ошибка при получении данных о маршруте ", ex.Message, " OK ");
            }
            finally
            {
                this.IsBusy = false;
            }
        }

    }
}
