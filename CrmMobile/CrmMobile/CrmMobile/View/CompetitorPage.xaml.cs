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
	public partial class CompetitorPage : ContentPage
	{
		public CompetitorPage ()
		{
			InitializeComponent ();
		}

        async void AddConcRepItem()
        {
            await Navigation.PushAsync(new AddCompetitionRepItemPage());
        }
        void DelConcRepItem()
        {

        }
    }
}