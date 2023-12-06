using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            if (double.TryParse(tboSoa.Text, out double a) && double.TryParse(tboSob.Text, out double b))
            {
                if(a == 0)
                {
                    lblKetqua.Text = "Phương trình vô nghiệm";
                }
                else
                {
                    lblKetqua.Text = $"Phương trình có nghiệm X = {-b / a}";
                }

            }
            else
            {
                lblKetqua.Text = "Vui lòng nhập số hợp lệ";
            }
        }
    }
}