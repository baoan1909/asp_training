using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // This ensures that the logic is executed only when the page is initially loaded, 
                // not on postbacks (e.g., button clicks).
                changeCheckBoxValue("1");
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = RadioButtonList1.SelectedValue;
            changeCheckBoxValue(selectedValue);
        }

        public void changeCheckBoxValue(string selectedValue)
        {
            CheckBoxList1.Items.Clear();

            switch (selectedValue)
            {
                case "1":
                    CheckBoxList1.Items.Add(new ListItem("Có nhiều chức năng giặt"));
                    CheckBoxList1.Items.Add(new ListItem("Cho phép ngưng giữa chừng"));
                    CheckBoxList1.Items.Add(new ListItem("Sấy khô đồ sau khi giặt xong"));
                    CheckBoxList1.Items.Add(new ListItem("Mẫu mã gọn và đẹp"));
                    break;
                case "2":
                    CheckBoxList1.Items.Add(new ListItem("Mẫu mã gọn và đẹp"));
                    CheckBoxList1.Items.Add(new ListItem("Màn hình sắc nét có màu đẹp"));
                    CheckBoxList1.Items.Add(new ListItem("Có nhiều chức năng tùy chọn"));
                    CheckBoxList1.Items.Add(new ListItem("Có nhiều giá thích hợp với người mua"));
                    break;
                case "3":
                    CheckBoxList1.Items.Add(new ListItem("Tủ lạnh tiết kiệm điện"));
                    CheckBoxList1.Items.Add(new ListItem("Tủ lạnh có 4 cánh"));
                    CheckBoxList1.Items.Add(new ListItem("Ngăn đồng ở dưới"));
                    CheckBoxList1.Items.Add(new ListItem("Ngăn đông không đóng tuyết"));
                    break;
                case "4":
                    CheckBoxList1.Items.Add(new ListItem("Đầu DVD siêu xịn"));
                    CheckBoxList1.Items.Add(new ListItem("Phát đĩa mượt mà"));
                    CheckBoxList1.Items.Add(new ListItem("Tích hợp nhiều công nghệ cao"));
                    CheckBoxList1.Items.Add(new ListItem("Phát và bảo vệ đĩa DVD lâu dài"));
                    break;
                case "5":
                    CheckBoxList1.Items.Add(new ListItem("Lò vi sóng lớn"));
                    CheckBoxList1.Items.Add(new ListItem("Bền theo thời gian"));
                    CheckBoxList1.Items.Add(new ListItem("Thức ăn chín đều"));
                    CheckBoxList1.Items.Add(new ListItem("Đảm bảo chất lượng cho từng món ăn"));
                    break;
                default:
                    CheckBoxList1.Items.Add(new ListItem("Nồi cơm điện đa năng"));
                    CheckBoxList1.Items.Add(new ListItem("Nấu cơm chín dẻo mềm"));
                    CheckBoxList1.Items.Add(new ListItem("Có nhiều chức năng tùy chọn"));
                    CheckBoxList1.Items.Add(new ListItem("Có nhiều chế độ nấu, hấp,..."));
                    break;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Xóa danh sách hiện tại trong BulletedList1
            BulletedList1.Items.Clear();

            // Duyệt qua từng mục trong CheckBoxList1 và kiểm tra xem có được chọn không
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    // Nếu được chọn, thêm text của mục vào BulletedList1
                    BulletedList1.Items.Add(new ListItem(item.Text));
                }
            }

            string selectedText = RadioButtonList1.SelectedItem.Text;
            Label2.Text = selectedText;
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}