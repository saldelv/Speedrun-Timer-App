using SQLite;
using static MauiApp1.Components.Pages.Home;
namespace MauiApp1.Components.Helpers
{
    public class SplitDatabase
    {
        string filename = "local.db3";
        private SQLiteConnection conn;

        public void Init()
        {
            string path = Path.Combine(FileSystem.Current.AppDataDirectory, filename);
            conn = new SQLiteConnection(path);
            conn.CreateTable<Split>();
        }

        public List<Split> GetSplits()
        {
            Init();
            return conn.Table<Split>().ToList();
        }

        public void Add(Split split)
        {
            Init();
            conn.Insert(split);
        }

        public void Delete()
        {
            Init();
            conn.DeleteAll<Split>();
        }
    }
}
