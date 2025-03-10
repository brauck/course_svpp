using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hotel
{
    public class OrderClientsRooms
    {
        public uint ClientId { get; set; }
        public uint RoomId { get; set; }
        public DateTime OrderDateAt { get; set; } = DateTime.Now;
        public DateTime OrderDateEnd { get; set; } = DateTime.Now;
    }
}
