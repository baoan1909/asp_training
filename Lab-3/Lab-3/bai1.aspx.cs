using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_3
{
    public partial class bai1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblThongbao.Text = string.Format("Bạn {0} đã đăng ký thành công! <br/> Thông tin đăng ký<br/>{1}<br/>{2}<br/>{3}<br/>{4}<br/>{5}<br/>{6}", txtHoten.Text, txtHoten.Text, txtCoquan.Text, txtEmail.Text, txtCheckin.Text, txtSongay.Text, cbxLoaiphong.Text);

            }
        }
    }
}