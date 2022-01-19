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
	public partial class IhsRepPage : ContentPage
	{
        private IhsRepViewModel vm;
        private IhsReportItem selectedReportItem;
        private Guid visitGuid;

        //public IhsRepPage (Guid selectedGuid)
        public IhsRepPage(Guid selectedGuid)
        {
			InitializeComponent ();
            visitGuid = selectedGuid;
            vm = new IhsRepViewModel(visitGuid);

            BindingContext = vm;
		}

        async void EditRepItem(object sender, ItemTappedEventArgs e)
        {
            selectedReportItem = (IhsReportItem)e.Item;
            //await Navigation.PushAsync(new IhsAddItemPage((IhsReportItem)e.Item));
            await Navigation.PushAsync(new IhsAddEditItemPage(visitGuid, selectedReportItem));
        }
    }
}