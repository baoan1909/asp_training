using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_4
{
    public partial class bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUCLN_Click(object sender, EventArgs e)
        {
            if(txtSoa.Text == "" || txtSob.Text == "")
            {
                lblKetqua.Text = "Vui lòng nhập số vào ô trống!";
                return;
            }
            int a = Convert.ToInt32(txtSoa.Text);
            int b = Convert.ToInt32(txtSob.Text);


            if (a == 0 || b == 0)
            {
                lblKetqua.Text = $"UCLN = {a + b} ";
                return;
            }

            while( a != b)
            {
                if (a > b)
                {
                    a = a - b;
                }
                else
                {
                    b = b - a;
                }
                
                lblKetqua.Text = lblKetqua.Text = $"UCLN = {a}";
            }
        
        }
    }
}