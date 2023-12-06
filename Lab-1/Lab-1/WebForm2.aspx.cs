using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
                if (double.TryParse(tboSoa.Text, out double a) && double.TryParse(tboSob.Text, out double b))
                {
                    if (b != 0) { lblKetqua.Text = $"Tổng = {a + b} <br/>Hiệu = {a - b}<br/>Thương = {a / b}"; }
                    else { lblKetqua.Text = $"Tổng = {a + b} <br/>Hiệu = {a - b}<br/>Thương = Không thực hiện được"; }

                }
                else
                {
                    lblKetqua.Text = "Vui lòng nhập số hợp lệ";
                }
        }
    }
}