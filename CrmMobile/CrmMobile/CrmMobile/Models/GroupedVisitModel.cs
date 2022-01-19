using System;
using System.Collections.Generic;
using System.Text;
using System.Collections.ObjectModel;

namespace CrmMobile
{
    public class GroupedVisitModel : ObservableCollection<VisitItem>
    {
        public string VisitStatusName { get; set; }
    }
}
