using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox4.Text == "" || (int.TryParse(TextBox4.Text, out int a) && a < 1))
            {
                Label9.Text = "Vui lòng chọn số lượng";
                return;
            }
            Label9.Text = "";
            foreach (ListItem item in DropDownList1.Items)
            {
                if (item.Selected)
                {
                    ListBox1.Items.Add(new ListItem(item.Text) + " (" + TextBox4.Text + ")");
                }
            }
        
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = ListBox1.Items.Count-1; i>=0; i--)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox1.Items.RemoveAt(i);
                }
            }

            if (ListBox1.Items.Count == 0)
            {
                Label8.Text = "Bạn không còn item nào";
            }else if (ListBox1.SelectedIndex == -1)
            {
                Label8.Text = "Bạn chọn item nào";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && ListBox1.SelectedIndex == -1)
            {
                // This method is executed when the button with ID "Button2" is clicked.
                if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && ListBox1.SelectedIndex == -1)
                {
                    Label2.Text = TextBox1.Text.ToString();
                    Label4.Text = TextBox2.Text.ToString();
                    Label6.Text = TextBox3.Text.ToString();

                    // Create a DataTable to hold the data for GridView1
                    DataTable dataTable = new DataTable();
                    dataTable.Columns.Add("TenBanh");
                    dataTable.Columns.Add("SoLuong");

                    // Iterate through items in ListBox1 and add them to DataTable
                    foreach (ListItem listItem in ListBox1.Items)
                    {
                        string[] parts = listItem.Text.Split('(');
                        string tenBanh = parts[0].Trim(); // Get the pastry name
                        string soLuong = parts[1].Replace(")", "").Trim(); // Get the quantity

                        dataTable.Rows.Add(tenBanh, soLuong);
                    }

                    // Set the DataTable as the DataSource for GridView1 and bind the data
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
            }
            else
            {
                Label8.Text = "Vui lòng kiểm tra và nhập đầy đủ thông tin";
            }
        }
    }
}