using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MvcLoginRegistration.Models
{
    public class AdminAccount
    {
        [Key]
        [Required(ErrorMessage = "Username is Required.")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Password is Required.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Compare("Password",ErrorMessage = "Please confirm your Password!")]
        [DataType(DataType.Password)]
         public string confirmPassword { get; set; }

    }
} 