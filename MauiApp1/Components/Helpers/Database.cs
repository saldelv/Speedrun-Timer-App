using SQLite;
using static MauiApp1.Components.Layout.NavMenu;
using static MauiApp1.Components.Pages.Home;
namespace MauiApp1.Components.Helpers
{
    public class SplitDatabase
    {
        string filename = "local.db3";
        private SQLiteConnection conn;

        public void Init(int type)
        {
            string path = Path.Combine(FileSystem.Current.AppDataDirectory, filename);
            conn = new SQLiteConnection(path);
            if (type == 0)
            {
                conn.CreateTable<Split>();
            }
            else
            {
                conn.CreateTable<Run>();
            }
        }

        public List<Split> GetSplits()
        {
            Init(0);
            return conn.Table<Split>().ToList();
        }

        public void AddSplit(Split split)
        {
            Init(0);
            conn.Insert(split);
        }

        public List<Run> GetRuns()
        {
            Init(1);
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
            Init(1);
            conn.Insert(run);
        }

        public void Delete(int type)
        {
            Init(type);
            if (type == 0)
            {
                conn.DeleteAll<Split>();
            }
        }
    }
}
