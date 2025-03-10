using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hotel
{
    public enum ROOMQUANTITY {Single,Double,Triple,Quadruple};
    public class Room
    {
        public uint RoomRoomId { get; set; }
        public uint RoomClientId { get; set; }        
    }
}
