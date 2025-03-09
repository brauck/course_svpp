using System.Data;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace Hotel
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        const string connStr = "server=localhost;user=root;database=hotel;port=3306;password=root";
        MySqlConnection conn = new MySqlConnection(connStr);
        public MainWindow()
        {
            InitializeComponent();
            loaddata();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void loaddata()
        {
            DataTable dt = new DataTable();
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"Select room_id  from order_clients_rooms", conn);
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

                adp.Fill(dt);
                dGrid.ItemsSource = dt.DefaultView;

                //MySqlCommandBuilder cb = new MySqlCommandBuilder(adp);
                //DataSet ds = new DataSet();
                //adp.Fill(ds, "customers");
                //dataGridCustomers.DataContext = ds;
                //MessageBox.Show(ds[0]);
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
    }
}