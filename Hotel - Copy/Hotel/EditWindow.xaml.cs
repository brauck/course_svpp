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
        //string one;
        //string two;
        //string three;
        //string four;
        //OrderClientsRooms orderClientsRooms;
        public EditWindow(Room room, Client client/*, OrderClientsRooms orderClientsRooms*/)
        {
            InitializeComponent();
            //CountRooms("Одноместный");
            //CountRooms("Двухместный");
            //CountRooms("Трёхместный");
            //CountRooms("Четырёхместный");
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
            
            if (room == "")
            {
                DialogResult = true;
                return;
            }
            DialogResult = true;
            MessageBox.Show($"Выбран номер {room}");

            string format = "yyyy-MM-dd HH:mm:ss";
            DateTime ddateIn = (DateTime)datePickerIn.SelectedDate;
            DateTime ddateOut = (DateTime)datePickerOut.SelectedDate;
            string dateIn = ddateIn.ToString(format);
            string dateOut = ddateOut.ToString(format);
            //MessageBox.Show(dateIn);
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
                //MessageBox.Show(clientId.ToString());

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
            if (ddateIn > ddateOut)
            {
                textBoxMessage.Content = $"Дата выселения не может\nбыть раньше заселения";
                return "";
            }
            string dateIn = ddateIn.ToString(format);
            string dateOut = ddateOut.ToString(format);
            

            DateTime dateTime = DateTime.Now;
            string room;
            string now;
            now = dateTime.ToString(format);

            //MessageBox.Show(dateIn);
            //MessageBox.Show(dateOut);
//-------------------------------------------------------------------------------
            // Проверка даты заселения
            //string sql = $"select count(*) from order_clients_rooms" +
            //    $" join room on room.id = room_id" +
            //    $" where rooms_quantity = '{quantity}'" +
            //    $" and order_date_end > '{dateIn}'" +
            //    $" and order_date_at < '{dateIn}'";

            //string isIn = "";
            //conn.Open();            
            //MySqlCommand cmd = new MySqlCommand(sql, conn);
            //try
            //{
            //    object result = cmd.ExecuteScalar();
            //    result = cmd.ExecuteScalar();
            //    if (result != null)
            //    {
            //        isIn = result.ToString();
            //        //textBoxMessage.Content = $"На выбранную дату нет свободных номеров\nЗаселение возможно после {dateIn}";
            //        return "";
            //    }
            //}
            //catch (MySqlException ex)
            //{
            //    MessageBox.Show(ex.ToString());
            //}
            //finally
            //{
            //    conn.Close();
            //}

            //if (isIn == CountRooms(quantity))
            //{
            //    sql = $"select order_date_ from order_clients_rooms" +
            //    $" join room on room.id = room_id" +
            //    $" where rooms_quantity = '{quantity}'" +
            //    $" and order_date_end > '{dateIn}'" +
            //    $" order by order_date_end" +
            //    $" limit 1";

            //    cmd = new MySqlCommand(sql, conn);
            //    try
            //    {
            //        object result = cmd.ExecuteScalar();
            //        result = cmd.ExecuteScalar();
            //        if (result != null)
            //        {
            //            dateIn = result.ToString();
            //            textBoxMessage.Content = $"На выбранную дату нет свободных номеров\nЗаселение возможно после {dateIn}";
            //            return "";
            //        }
            //    }
            //    catch (MySqlException ex)
            //    {
            //        MessageBox.Show(ex.ToString());
            //    }
            //    finally
            //    {
            //        conn.Close();
            //    }
            //}
            //else
            //{
            //    sql = $"select room_id from order_clients_rooms" +
            //    $" join room on room.id = room_id" +
            //    $" where rooms_quantity = '{quantity}'" +
            //    $" and order_date_end > '{dateIn}'" +
            //    $" order by desc" +
            //    $"limit 1";

            //    cmd = new MySqlCommand(sql, conn);
            //    try
            //    {
            //        object result = cmd.ExecuteScalar();
            //        result = cmd.ExecuteScalar();
            //        if (result != null)
            //        {
            //            dateIn = result.ToString();
            //            return "";
            //        }
            //    }
            //    catch (MySqlException ex)
            //    {
            //        MessageBox.Show(ex.ToString());
            //    }
            //    finally
            //    {
            //        conn.Close();
            //    }
            //}

            //-----------------------------------------------------------------------------------
            // Проверка даты выселения
            //sql = $"select count(*) order_date_at from order_clients_rooms" +
            //    $" join room on room.id = room_id" +
            //    $" where rooms_quantity = '{quantity}'" +
            //    $" where order_date_end > '{dateOut}'" +
            //    $" and order_date_at < '{dateOut}'" +
            //    $" limit 1";

            //string isOut = "";
            //conn.Open();
            //cmd = new MySqlCommand(sql, conn);
            //try
            //{
            //    object result = cmd.ExecuteScalar();
            //    result = cmd.ExecuteScalar();
            //    if (result != null)
            //    {
            //        isOut = result.ToString();
            //        //textBoxMessage.Content = $"На выбранную дату нет свободных номеров\nЗаселение возможно после {dateIn}";
            //    }
            //}
            //catch (MySqlException ex)
            //{
            //    MessageBox.Show(ex.ToString());
            //}
            //finally
            //{
            //    conn.Close();
            //}

            //if (isOut == CountRooms(quantity))
            //{
            //    sql = $"select order_date_end from order_clients_rooms" +
            //    $" join room on room.id = room_id" +
            //    $" where rooms_quantity = '{quantity}'" +
            //    $" and order_date_at < '{dateOut}'" +
            //    $" order by desc" +
            //    $" limit 1";

            //    cmd = new MySqlCommand(sql, conn);
            //    try
            //    {
            //        object result = cmd.ExecuteScalar();
            //        result = cmd.ExecuteScalar();
            //        if (result != null)
            //        {
            //            dateIn = result.ToString();
            //            textBoxMessage.Content = $"Выселение возможно только до {dateOut}";
            //            return "";
            //        }
            //    }
            //    catch (MySqlException ex)
            //    {
            //        MessageBox.Show(ex.ToString());
            //    }
            //    finally
            //    {
            //        conn.Close();
            //    }
            //}
            //------------------------------------------------------------------------------------
            // Выбор номера
            string sql = $"select room_id from order_clients_rooms" +
                $" join room on room.id = room_id" +
                $" where rooms_quantity = '{quantity}'" +
                $" and order_date_end > '{dateOut}'" +
                $" and order_date_at < '{dateIn}'" +
                $" limit 1";

            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            try
            {
                object result = cmd.ExecuteScalar();
                result = cmd.ExecuteScalar();
                if (result != null)
                {
                    room = result.ToString();
                    return room;
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
            return "";
        }


        private string CountRooms(string quantity)
        {
            string sql = $"select count(*) from room " +
                $" where rooms_quantity = '{quantity}'";
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            try
            {
                object result = cmd.ExecuteScalar();
                result = cmd.ExecuteScalar();
                if (result != null)
                {
                    string numRooms = result.ToString(); 
                    conn.Close();
                    return numRooms;
                }                
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());                
                conn.Close();
                return "";
            }
            return "";
        }
    }
}
