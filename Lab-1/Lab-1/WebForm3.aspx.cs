using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            if (double.TryParse(tboSoa.Text, out double a) && double.TryParse(tboSob.Text, out double b) && double.TryParse(tboSoc.Text, out double c))
            {
                if(a >= b && a >= c)
                {
                    lblKetqua.Text = $"{a} là số lớn nhất";
                }
                else if(b > a && b >= c)
                {
                    lblKetqua.Text = $"{b} là số lớn nhất";
                }
                else
                {
                    lblKetqua.Text = $"{c} là số lớn nhất";
                }

            }
            else
            {
                lblKetqua.Text = "Vui lòng nhập số nguyên hợp lệ";
            }
        }
    }
}