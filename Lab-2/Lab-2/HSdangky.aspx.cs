using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class HSdangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnDangky_Click(object sender, EventArgs e)
        {
            if(tboHoten.Text.ToString() == null)
            {
                lblHoten.Text = "Vui lòng nhập Họ tên";
                return;
            }
            if (tboEmail.Text.ToString() == null)
            {
                lblEmail.Text = "Vui lòng nhập Email";
                return;
            }
            if (!rdoNam.Checked && !rdoNu.Checked)
            {
                lblGioitinh.Text = "Vui lòng chọn Giới tính";
                return;
            }
            if (tboDiachi.Text.ToString() == null)
            {
                lblDiachi.Text = "Vui lòng nhập Địa chỉ";
                return;
            }
            if(tboSDT.Text.ToString() == null)
            {
                lblSDT.Text = "Vui lòng nhập số điện thoại";
                return;
            }

            lblHoten.Text = $"{tboHoten.Text.ToString()}";

        }
    }
}