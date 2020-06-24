using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MvcLoginRegistration.Models
{
    public class smsContext : DbContext
    {
        public smsContext() : base("sms")
        {

        }

        public DbSet<AdminAccount> adminAccount { get; set; }

        public DbSet<TrainerAccount> TrainerAccounts { get; set; }
    }
}
