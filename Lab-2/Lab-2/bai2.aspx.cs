using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonConfirm_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text.Trim().Length == 0)
            {
                Label2.Text = "Bạn vui lòng nhập";
                Label3.Text = " Họ và tên";
                Label4.Text = "";
                Label5.Text = "";
            }
            else
            {
                Label2.Text = "Chào bạn";
                Label3.Text = TextBox1.Text;
                Label4.Text = "Chúc mừng bạn đã đến với môn học";
                Label5.Text = "Lập trình Web2";

            }
        }
    }
}