using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hotel
{
    public enum ROOMQUANTITY {'Single','Double','Triple','Quadruple'};
    public class Room
    {
        public uint RoomId { get; set; }
        public uint ClientId { get; set; }        
    }
}
