using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MvcLoginRegistration.Models
{
    public class TrainerAccount
    {
        
        [Key]
        [Required(ErrorMessage = "Username is Required.")]
        public string TUsername { get; set; }

        [Required(ErrorMessage = "Course is Required.")]
        public string Course { get; set; }

        [Required(ErrorMessage = "Email is Required.")]
        [DataType(DataType.EmailAddress)]
        public string EmailAdress { get; set; }

    }
}
