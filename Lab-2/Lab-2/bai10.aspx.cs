using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "0";
                TextBox1.Text = "";
            }
            else
            {
                check_upload();
            }
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            check_upload();
        }
        public void check_upload()
        {
            int totalChecked = 0;
            string selectedItems = "";

            foreach (Control control in form1.Controls)
            {
                if (control is CheckBox checkbox && checkbox.Checked)
                {
                    totalChecked++;
                    selectedItems += checkbox.Text + "\n";
                }
            }

            Label1.Text = $"{totalChecked}";
            TextBox1.Text = selectedItems;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            CheckBox6.Checked = false;
            CheckBox7.Checked = false;
            Label1.Text = "0";
            TextBox1.Text = "";
        }
    }
}