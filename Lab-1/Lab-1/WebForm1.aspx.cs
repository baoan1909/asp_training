using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            TextBox tboSoa = (TextBox)FindControl("tboSoa");
            TextBox tboSob = (TextBox)FindControl("tboSob");
            
            if(tboSoa != null && tboSob != null)
            {
                if(int.TryParse(tboSoa.Text, out int a) && int.TryParse(tboSob.Text, out int b))
                {
                   int sum = a + b;

                    lblKetqua.Text = $"Kết quả: {sum}";
                }
                else
                {
                    lblKetqua.Text = "Vui lòng nhập số nguyên hợp lệ";
                }
            }
            else
            {
                lblKetqua.Text = "Vui lòng nhập số nguyên vào ô dữ liệu";
            }
        }
    }
}