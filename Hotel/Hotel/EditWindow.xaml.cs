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
using System.Xml.Linq;
using MySql.Data.MySqlClient;
using static System.Runtime.InteropServices.JavaScript.JSType;
using static Org.BouncyCastle.Bcpg.Attr.ImageAttrib;

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
            //UInt32.TryParse(roomId.Text, out uint j);            
            //room.RoomRoomId = j;
            comboBoxQuantity.DataContext = room;
            client.Name = textBoxCliet.Text;
            datePickerIn.SelectedDate = DateTime.Now;
            datePickerOut.SelectedDate = DateTime.Now;
        }

        private void ButtonOK_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
            string quantity = "";
            string name = textBoxCliet.Text;
            switch (comboBoxQuantity.SelectedIndex)
            {
                case 0: quantity = "Одноместный"; break;
                case 1: quantity = "Двухместный"; break;
                case 2: quantity = "Трёхместный"; break;
                case 3: quantity = "Четырёхместный"; break;
            }
            string room = chooseRoom(quantity);
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

        private void InsertData(string room, string quantity, string name, string dateIn, string dateOut)
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

        private string chooseRoom(string quantity)
        {
            string format = "yyyy-MM-dd HH:mm:ss";
            DateTime ddateIn = (DateTime)datePickerIn.SelectedDate;
            DateTime ddateOut = (DateTime)datePickerOut.SelectedDate;
            string dateIn = ddateIn.ToString(format);
            string dateOut = ddateOut.ToString(format);
            DateTime dateTime = DateTime.Now;
            string room;
            string now;
            now = dateTime.ToString(format);

            MessageBox.Show(dateIn);
            MessageBox.Show(dateOut);

            string sql = $"select room_id from order_clients_rooms" +
                $" join room on room.id = room_id" +
                $" where (rooms_quantity = '{quantity}'" +
                $" and order_date_at > '{dateIn}'" +
                $" and order_date_at > '{dateOut}')" +
                $" or (rooms_quantity = '{quantity}'" +
                $" and order_date_end < '{dateIn}'" +
                $" and order_date_end > '{now}')" +
                $" order by order_date_at desc" +
                $" limit 1;";


            conn.Open();            
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            try
            {
                object result = cmd.ExecuteScalar();
                MessageBox.Show($"now{now}");
                cmd = new MySqlCommand(sql, conn);
                result = cmd.ExecuteScalar();
                if (result != null)
                {
                    room = result.ToString();
                    MessageBox.Show($"room{room}");
                    return room;
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show($"now{now}");
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
            return "";
        }
    }
}
