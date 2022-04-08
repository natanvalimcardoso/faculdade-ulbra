using System.Collections.Generic;

namespace Aula06.App.Model
{
    public class Client
    {
        public Client(int id, string name, string phoneNumber)
        {
            Id = id;
            Name = name;
            PhoneNumber = phoneNumber;
            Billings = new List<Billing>();
        }
        public Client(int id, string name, string phoneNumber, List<Billing> billings)
        {
            Id = id;
            Name = name;
            PhoneNumber = phoneNumber;
            Billings = billings;
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string PhoneNumber { get; set; }

        public List<Billing> Billings { get; set; }
    }
}
