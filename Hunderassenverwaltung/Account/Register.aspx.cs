using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Hunderassenverwaltung.Models;

namespace Hunderassenverwaltung.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            uiCompareValidatorForZip.Validate();
            if (uiCompareValidatorForZip.IsValid)
            {
                string name = uiTextBoxForName.Text;
                string prename = uiTextBoxForPrename.Text;
                string address = uiTextBoxForAddress.Text;
                string zip = uiTextBoxForZip.Text;
                string city = uiTextBoxForCity.Text;
                string email = uiTextBoxForEmail.Text;

                var manager = new UserManager();
                var user = new ApplicationUser() { UserName = UserName.Text };
                user.Address = address;
                user.City = city;
                user.Email = email;
                user.Name = name;
                user.Prename = prename;
                user.Zip = zip;
                IdentityResult result = manager.Create(user, Password.Text);
                if (result.Succeeded)
                {
                    IdentityHelper.SignIn(manager, user, isPersistent: false);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    ErrorMessage.Text = result.Errors.FirstOrDefault();
                }
            }
        }
    }
}