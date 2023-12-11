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
            
            if (tboHoten.Text.Length == 0 || tboEmail.Text.Length == 0 || (!rdoNam.Checked && !rdoNu.Checked) || tboDiachi.Text.Length == 0 || tboSDT.Text.Length == 0)
            {
                blt_result.Items.Clear();
                blt_result.Items.Add("Vui lòng nhập đầy đủ trường thông tin");
            }
            else
            {
                string selectedValue = "";
                if (rdoNam.Checked) { selectedValue = rdoNam.Text; }
                else
                {
                    selectedValue = rdoNu.Text;
                }
                blt_result.Items.Clear();
                blt_result.Items.Add($"Họ tên khách hàng: {tboHoten.Text}");
                blt_result.Items.Add($"Giới tính: {selectedValue}");
                blt_result.Items.Add($"Email: {tboEmail.Text}");
                blt_result.Items.Add($"Địa chỉ: {tboDiachi.Text}");
                blt_result.Items.Add($"Điện thoại: {tboSDT.Text}");
            }
        }
    }
}