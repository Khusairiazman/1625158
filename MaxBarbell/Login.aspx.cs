using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;


namespace MaxBarbell
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void loginButtonClick (object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var allRoles = roleManager.Roles;

            if (user !=null)
            {

                if (User.IsInRole("admin")) {
                    litLoginResult.Text = "Log in Success as admin";
                }
                else
                {
                    litLoginResult.Text = "Log in Success";
                }
                
            }
            else
            {
                litLoginError.Text = "Invalid username or password";
            }

        }

        protected void LogUserIn (UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
           
        }
    
        
        //registeration field


        protected void registerButtonClick(object sender, EventArgs e)

        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);


            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            
            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };
            IdentityResult result = userManager.Create(user, txtRegPassword.Text);
            IdentityRole adminRole = new IdentityRole("user");
            roleManager.Create(adminRole);
            userManager.AddToRole(user.Id, "user");
            userManager.Update(user);
          


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