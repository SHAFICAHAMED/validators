using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validators
{
    public partial class validationControlls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check if the page is valid before proceeding
            if (Page.IsValid)
            {
                // Assuming successful login
                Response.Redirect("LoginSuccess.aspx");
            }
        }
    }
}