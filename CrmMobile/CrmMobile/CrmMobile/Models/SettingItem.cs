using SQLite;

namespace CrmMobile
{
    [Table("settings")]
    public class SettingItem
    {
        private string accountName;

        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string LoginName { get; set; }
        public string Password { get; set; }
        public string Domain { get; set; }
        public string URL { get; set; }
        public string AccountName
        {
            get { return accountName; }
            set
            {
                accountName = Domain + @"\" + LoginName;
            }
        }
        
    }
}
