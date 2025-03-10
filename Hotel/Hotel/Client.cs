using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hotel
{
    public class Client
    {
        public uint ClientId { get; set; }
        public String Name { get; set; }
        public String Email { get; set; } = "example@example.com";
        public String Password { get; set; } = "1111";
        public int ?Phone { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.Now;
        public DateTime ModifiedAT { get; set; } = DateTime.Now;
    }
}
