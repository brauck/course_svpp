using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Hotel
{
    /// <summary>
    /// Interaction logic for EditWindow.xaml
    /// </summary>
    public partial class EditWindow : Window
    {
        Room room;
        Client client;
        OrderClientsRooms orderClientsRooms;
        public EditWindow(Room room, Client client/*, OrderClientsRooms orderClientsRooms*/)
        {
            InitializeComponent();
            this.room = room;
            this.client = client;
            //this.orderClientsRooms = orderClientsRooms;
            //grid.DataContext = orderClientsRooms;
            //MessageBox.Show(grid.Name);
            //string str = grid.Name;
        }

        private void ButtonOK_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
