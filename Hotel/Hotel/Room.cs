using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hotel
{
    public enum ROOMQUANTITY { Одноместный, Двухместный, Трёхместный, Четырёхместный };
    public class Room
    {
        public uint RoomRoomId { get; set; }
        public uint RoomClientId { get; set; }
        public ROOMQUANTITY roomquantity { get; set; } = ROOMQUANTITY.Одноместный;
}
}
