using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace CrmMobile
{
    class IhsAddEditItemViewModel : INotifyPropertyChanged
    {
        void OnPropertyChanged([CallerMemberName] string name = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        public event PropertyChangedEventHandler PropertyChanged;

        public bool IsAddItemButtonVisible { get; set; }
        public bool IsGoInfoButtonVisible { get; set; }
        public bool IsGoRefreshButtonVisible { get; set; }
        public bool IsGoSettingsButtonVisible { get; set; }


        public ICommand SaveItemCommand { get; private set; }
        public ICommand DeleteItemCommand { get; private set; }
        public ICommand GoBackCommand { get; private set; }

        private IhsReportItem reportItem;
        private Guid visitGuid;

        private decimal _SomeTradingSalesRub;
        public decimal SomeTradingSalesRub
        {
            get
            {
                return _SomeTradingSalesRub;
            }
            set
            {
                SetIhs();
                _SomeTradingSalesRub = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(SomeTradingSalesRub)));
            }
        }

        private decimal _SomeTradingSalesItems;
        public decimal SomeTradingSalesItems
        {
            get
            {
                return _SomeTradingSalesItems;
            }
            set
            {
                _SomeTradingSalesItems = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(SomeTradingSalesItems)));
            }
        }

        private decimal _totalSalesRub;
        public decimal TotalSalesRub
        {
            get
            {
                return _totalSalesRub;
            }
            set
            {
                SetIhs();
                _totalSalesRub = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(TotalSalesRub)));
            }
        }

        private decimal _totalSalesItems;
        public decimal TotalSalesItems
        {
            get
            {
                return _totalSalesItems;
            }
            set
            {
                _totalSalesItems = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(TotalSalesItems)));
            }
        }

        private decimal _ihs;
        public decimal Ihs
        {
            get
            {
                return _ihs;
            }
            set
            {
                _ihs = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(Ihs)));
            }
        }

        public IhsAddEditItemViewModel(Guid selectedGuid, IhsReportItem selectedReportItem)
        {
            IsAddItemButtonVisible = false;
            IsGoSettingsButtonVisible = false;
            IsGoInfoButtonVisible = false;
            IsGoRefreshButtonVisible = false;

            SaveItemCommand = new Command(SaveItemAsync);
            DeleteItemCommand = new Command(DeleteItemAsync);
            GoBackCommand = new Command(GoBackAsync);

            visitGuid = selectedGuid;
            reportItem = selectedReportItem;
            if (selectedReportItem != null)
            {
                SomeTradingSalesRub = reportItem.SomeTradingSalesRub;
                SomeTradingSalesItems = reportItem.SomeTradingSalesItems;
                TotalSalesRub = reportItem.TotalSalesRub;
                TotalSalesItems = reportItem.TotalSalesItems;
            }
            else
            {
                reportItem = new IhsReportItem();

            }
        }
        async void GoBackAsync()
        {
            await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new IhsRepPage(visitGuid));
        }

        //Form validation if some fields are empty
        async void SaveItemAsync()
        {
            if (TotalSalesRub == 0 || SomeTradingSalesRub == 0 || TotalSalesItems == 0 || SomeTradingSalesItems == 0)
            {
                await App.Current.MainPage.DisplayAlert("", " Все поля формы должны быть заполнены ", "", " OK ");
                return;
            }

            //Form validation if total is less the SomeTrading or it's 0
            if (TotalSalesItems < SomeTradingSalesItems || TotalSalesRub < SomeTradingSalesRub)
            {
                await App.Current.MainPage.DisplayAlert("", " Общие продажи не могут быть меньше продаж SomeTrading ", "", " OK ");
                return;
            }
            if (String.IsNullOrEmpty(reportItem.SellOutReportItemOwner))
            {
                //Populate report record with system data
                var settings = await App.Database.GetSettingAsync();
                string login = settings[0].AccountName;
                reportItem.SellOutReportItemOwner = login;
                reportItem.ModifiedBy = login;
                reportItem.ModifiedWhen = DateTime.Now;
                reportItem.ReportFirstSavedWhen = reportItem.ReportFirstSavedWhen != null ? reportItem.ReportFirstSavedWhen : DateTime.Now;
                reportItem.SellOutReportItemGUID = Guid.NewGuid();
                reportItem.ReportGUID = visitGuid;
            }
            //Populate report record with user data
            reportItem.SomeTradingSalesRub = this.SomeTradingSalesRub;
            reportItem.SomeTradingSalesItems = this.SomeTradingSalesItems;
            reportItem.TotalSalesRub = this.TotalSalesRub;
            reportItem.TotalSalesItems = this.TotalSalesItems;
            reportItem.Share = this.Ihs.ToString();
            //Save to local data base
            await App.Database.IhsSaveAsync(reportItem);
            //Update visit has reports property
            await App.Database.HasVisitReportsAsync(visitGuid);

            //Navigate back
            await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new IhsRepPage(visitGuid));
        }

        async void DeleteItemAsync()
        {
            //Ask for confirmation
            var answer = await App.Current.MainPage.DisplayAlert("", "Эта запись будет удалена из отчета", "Удалить", "Отменить");
            if (answer == true)
            {
                await App.Database.IhsDeleteAsync(reportItem);

                //Navigate back
                await Xamarin.Forms.Application.Current.MainPage.Navigation.PushAsync(new IhsRepPage(visitGuid));
            }
        }

        private void SetIhs()
        {
            if (TotalSalesRub != 0 && TotalSalesRub > SomeTradingSalesRub)
            {
                Ihs = SomeTradingSalesRub / TotalSalesRub;
            }
            else
            {
                Ihs = 0;
            }
        }
    }
}
