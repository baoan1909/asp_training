using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            if (double.TryParse(tboSoa.Text, out double a) && double.TryParse(tboSob.Text, out double b) && double.TryParse(tboSoc.Text, out double c))
            {
                if (a == 0)
                {
                    if (a == 0)
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
                    double deta = b*b - 4*a*c;

                    if(deta < 0)
                    {
                        lblKetqua.Text = "Phương trinh vô nghiệm";
                    }
                    else if ( deta == 0)
                    {
                        lblKetqua.Text = $"Phương trinh có nghiệm kép: X1 = X2 = {-b/2*a}";
                    }
                    else
                    {
                        double X1 = (-b + Math.Sqrt(deta)) / (2 * a);
                        double X2 = (-b - Math.Sqrt(deta)) / (2 * a);

                        lblKetqua.Text = $"Phương trinh có hai nghiệm phân biệt:<br/>X1 = {X1}<br/>X2 = {X2} ";
                    }
                }

            }
            else
            {
                lblKetqua.Text = "Vui lòng nhập số nguyên hợp lệ";
            }
        }
    }
}