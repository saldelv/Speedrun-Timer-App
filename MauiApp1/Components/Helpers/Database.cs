using SQLite;
using static MauiApp1.Components.Layout.NavMenu;
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
            conn.CreateTable<Run>();
        }

        public List<Split> GetSplits()
        {
            Init();
            return conn.Table<Split>().ToList();
        }

        public void AddSplit(Split split)
        {
            Init();
            conn.Insert(split);
        }

        public List<Run> GetRuns()
        {
            Init();
            List<Run> l = conn.Table<Run>().ToList();
            if (!l.Any())
            {
                Run run = new Run
                {
                    Index = 0,
                    Record = "",
                    splitIndex = 0,
                    Name = "Run 1"
                };
                l.Add(run);
                AddRuns(run);
            }
            return l;
        }

        public void AddRuns(Run run)
        {
            Init();
            conn.Insert(run);
        }

        public void Delete()
        {
            Init();
            conn.DeleteAll<Split>();
        }
    }
}
