using System;
using System.ComponentModel.DataAnnotations;

namespace MobilityOne.Interview.Api.Models
{
    public class User
    {
        public int Id { get; set; }

        [MaxLength(32)]
        public string Name { get; set; }

        [MaxLength(16)]
        public string PhoneNumber { get; set; }

        [MaxLength(38)]
        public string EmailAddress { get; set; }

        [MaxLength(42)]
        public string Password { get; set; }
        public DateTimeOffset LastLogin { get; set; }
        public DateTimeOffset CreateDate { get; set; }
        public bool Suspended { get; set; }
    }
}
