using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_4
{
    public partial class bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                lblThongbao.Text = string.Format("Bạn {0} đã đăng ký thành công!", txtHoten.Text);
            }
        }
    }
}