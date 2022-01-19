using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CrmMobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class VisitCardPage : ContentPage
	{
        //private VisitItem selectedVisit;
        private VisitCardViewModel vm;

        private Guid visitGuid;

        //private Guid reportGuid;

        public VisitCardPage(Guid selectedGuid)
        {
            InitializeComponent();
            visitGuid = selectedGuid;
            vm = new VisitCardViewModel(selectedGuid);
            BindingContext = vm;
        }

        //Open IHS report
        async void DoIhs(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new IhsRepPage(visitGuid));
        }

        //Open Concurrents activity report
        async void DoCompetitor(object sender, EventArgs e)
        {
            await Navigation.PushAsync(
                new CompetitorPage());
        }

        //Open Distribution report
        async void DoDistribution(object sender, EventArgs e)
        {
            await Navigation.PushAsync( new DistributionPage());
        }

        //Open Distribution POSM report
        async void DoDistrPosm(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new DistrPosmPage());
        }

        //Open Portion report
        async void DoPortion(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PortionPage());
        }

        //Open Training report
        async void DoTraining(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TrainingPage());
        }

        //Open Photo report
        async void DoPhoto(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PhotoPage());
        }

    }
}