using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CrmMobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class IhsAddEditItemPage : ContentPage
	{
        private IhsReportItem selectedRecord;
        private IhsAddEditItemViewModel vm;
        private Guid visitGuid;

        public IhsAddEditItemPage (Guid selectedGuid, IhsReportItem selectedReportItem)
		{
			InitializeComponent ();

            visitGuid = selectedGuid;
            selectedRecord = selectedReportItem; 
            vm = new IhsAddEditItemViewModel(visitGuid, selectedRecord);
            BindingContext = vm;
		}

        ////Delete current record
        //async void DeleteIhs(object sender, EventArgs e)
        //{
        //    //Ask for confirmation
        //    var answer = await DisplayAlert("", "Эта запись будет удалена из отчета", "Удалить", "Отменить");
        //    if (answer == true)
        //    {
        //        await App.Database.IhsDeleteAsync(selectedRecord);

        //        //Navigate back
        //        await Navigation.PopAsync();
        //    }

        //}
    }
}