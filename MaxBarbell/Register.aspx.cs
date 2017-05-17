using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MaxBarbell
{
    public partial class Register : System.Web.UI.Page
    {
        protected void registerButtonClick (object sender, EventArgs e)

        {  
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore <IdentityUser>(identityDbContext);
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var manager = new UserManager <IdentityUser>(userStore);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
    

            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };
            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            IdentityRole adminRole = new IdentityRole("admin");
            roleManager.Create(adminRole);

            var allRoles = roleManager.Roles;

            if (result.Succeeded)
            {
                litRegisterResult.Text = "Success"; 
            }

            else
            {
                litRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }

        }
    }
}