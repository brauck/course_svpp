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
using MySql.Data.MySqlClient;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Hotel
{
    /// <summary>
    /// Interaction logic for EditWindow.xaml
    /// </summary>
    public partial class EditWindow : Window
    {
        const string connStr = "server=localhost;user=root;database=hotel;port=3306;password=root";
        MySqlConnection conn = new MySqlConnection(connStr);

        Room room;
        Client client;
        string flag;
        //OrderClientsRooms orderClientsRooms;
        public EditWindow(Room room, Client client/*, OrderClientsRooms orderClientsRooms*/)
        {
            InitializeComponent();
            this.room = room;
            this.client = client;
            UInt32.TryParse(roomId.Text, out uint j);            
            room.RoomRoomId = j;
            comboBoxQuantity.DataContext = room;
            client.Name = textBoxCliet.Text;
            datePickerIn.SelectedDate = DateTime.Now;
            datePickerOut.SelectedDate = DateTime.Now;
        }

        private void ButtonOK_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
            string room = roomId.Text;
            string quantity = "";
            string name = textBoxCliet.Text;
            switch (comboBoxQuantity.SelectedIndex)
            {
                case 0: quantity = "Одноместный"; break;
                case 1: quantity = "Двухместный"; break;
                case 2: quantity = "Трёхместный"; break;
                case 3: quantity = "Четырёхместный"; break;
            }
            string format = "yyyy-MM-dd HH:mm:ss";
            DateTime ddateIn = (DateTime)datePickerIn.SelectedDate;
            DateTime ddateOut = (DateTime)datePickerOut.SelectedDate;
            string dateIn = ddateIn.ToString(format);
            string dateOut = ddateOut.ToString(format);
            MessageBox.Show(dateIn);
            InsertData(room, quantity, name, dateIn, dateOut);
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        public void InsertData(string room, string quantity, string name, string dateIn, string dateOut)
        {
            flag = "insert";

            conn.Open();
            MySqlTransaction Tran = conn.BeginTransaction();

            try
            {
                

                MySqlCommand cmd = new MySqlCommand($"INSERT INTO `client` (`name`) VALUES ('{name}')", conn);
                cmd.Transaction = Tran;
                cmd.ExecuteNonQuery();
                long clientId = cmd.LastInsertedId;
                MessageBox.Show(clientId.ToString());

                cmd = new MySqlCommand($"UPDATE room SET `client_id`='{clientId}', `rooms_quantity`='{quantity}' WHERE `id`='{room}'", conn);
                cmd.ExecuteNonQuery();

                cmd = new MySqlCommand($"INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('{clientId}', '{room}', '{dateIn}', '{dateOut}');", conn);
                cmd.ExecuteNonQuery();

                Tran.Commit();
            }
            catch (MySqlException ex)
            {
                Tran.Rollback();
                MessageBox.Show(ex.ToString());                
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
