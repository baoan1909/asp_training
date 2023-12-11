using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Hienthi();
        }

        public void Hienthi()
        {
            string selectText = ListBox1.SelectedItem.Text;
            string selectValue = ListBox1.SelectedValue.Trim();
            string imageUrl = $"~/image/{selectValue}.jpg";
            Image1.ImageUrl = imageUrl;
            Label1.Text = $"{selectText}";
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Hienthi();
        }
    }
}