using MauiApp1.Components.Helpers;

namespace MauiApp1
{
    public partial class App : Application
    { 
        public static SplitDatabase SplitDatabase { get; set; }
        public App(SplitDatabase splitDatabase)
        {
            InitializeComponent();

            MainPage = new MainPage();

            SplitDatabase = splitDatabase;
        }
    }
}
