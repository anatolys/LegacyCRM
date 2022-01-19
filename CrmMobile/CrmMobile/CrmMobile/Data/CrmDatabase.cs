using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using SQLite;

namespace CrmMobile
{
    public class CrmDatabase
    {
        readonly SQLiteAsyncConnection database;

        //Work with db and tables
        public CrmDatabase(string dbPath)
        {
            database = new SQLiteAsyncConnection(dbPath);

            //Create table for settings if it is not exists
            database.CreateTableAsync<SettingItem>().Wait();

            //Create table visits if it is not exists
            database.CreateTableAsync<VisitItem>().Wait();

            //Create table ihs reports if it is not exists
            database.CreateTableAsync<IhsReportItem>().Wait();

            //Check table for settings and seed it if it is empty
            //TryToSeedSettingsTable().Wait();
        }


        //Get visits from local db by visit date
        public async Task<List<VisitItem>> GetVisitsFromDbAsync(DateTime selectedDate)
        {
            return await database.Table<VisitItem>().Where(d => d.VisitDate == selectedDate).ToListAsync();
        }

        //Get one visit by guid
        public async Task<VisitItem> GetVisitByGuidAsync(Guid visitGuid)
        {
            return await database.Table<VisitItem>().Where(v => v.VisitGUID == visitGuid).FirstOrDefaultAsync();
        }

        //Save visit to local db
        public Task<int> SaveVisitAsync(VisitItem item)
        {
            return database.InsertOrReplaceAsync(item);
        }

        //Close visit 
        public async Task<bool> CloseVisitAsync(Guid selectedGuid)
        {
            Guid visitGuid = selectedGuid;
            VisitItem match;
            var hasReports = await HasVisitReportsAsync(visitGuid);
            match = await database.Table<VisitItem>().Where(v => v.VisitGUID == visitGuid).FirstOrDefaultAsync();
            if (hasReports)
            {
                match.IsColsed = match.IsColsed == true ? false : true;
                await database.UpdateAsync(match);
            }
            else
            {
                await Xamarin.Forms.Application.Current.MainPage.DisplayAlert("", "Невозможно завершить визит в котором нет отчетов", "OK");
            }
            return match.IsColsed;
        }

        //Check if visit closed
        public async Task<bool> IsVisitClosedAsync(Guid visitGuid)
        {
            var match = await database.Table<VisitItem>().Where(v => v.VisitGUID == visitGuid).FirstOrDefaultAsync();
            return match.IsColsed;
        }

        //Check if visit has reports
        public async Task<bool> HasVisitReportsAsync(Guid visitGuid)
        {
            bool hasReports = false;
            //Check Ihs reports
            var match = await database.Table<IhsReportItem>().Where(r => r.ReportGUID == visitGuid).FirstOrDefaultAsync();
            if (match != null)
            {
                hasReports = true;
            }
            return hasReports;
        }

        //Get settings from local db
        public async Task<List<SettingItem>> GetSettingAsync()
        {
            return await database.Table<SettingItem>().Where(i => i.Id == 0).ToListAsync();
        }

        //Save settings change in local db
        public Task<int> SaveSettingAsync(SettingItem item)
        {
            return database.InsertOrReplaceAsync(item);
        }

        //Delete setting
        public Task<int> DeleteItemAsync(SettingItem item)
        {
            return database.DeleteAsync(item);
        }

        //Get Ihs report recorsd for the visit
        public async Task<List<IhsReportItem>> GetIhsRecordsForVisit(Guid visitGuid)
        {
            return await database.Table<IhsReportItem>().Where(g => g.ReportGUID == visitGuid).ToListAsync();
        }

        //Save Ihs record
        public async Task<int> IhsSaveAsync(IhsReportItem item)
        {
            return await database.InsertOrReplaceAsync(item);
        }

        //Delete Ihs record
        internal Task IhsDeleteAsync(IhsReportItem item)
        {
            return database.DeleteAsync(item);
        }

    }
}
