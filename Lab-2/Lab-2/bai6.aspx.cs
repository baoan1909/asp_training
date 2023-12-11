using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bulletStyple();
        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {
            string SelectedValue = BulletedList1.Items[e.Index].Value;
            Response.Redirect(SelectedValue);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            bulletStyple();
        } 

        public void bulletStyple()
        {
            switch (DropDownList1.SelectedValue)
            {
                case "1":
                    BulletedList1.BulletStyle = BulletStyle.Numbered;
                    break;
                case "2":
                    BulletedList1.BulletStyle = BulletStyle.LowerRoman;
                    break;
                case "3":
                    BulletedList1.BulletStyle = BulletStyle.UpperRoman;
                    break;
                case "4":
                    BulletedList1.BulletStyle = BulletStyle.Circle;
                    break;
                case "5":
                    BulletedList1.BulletStyle = BulletStyle.Square;
                    break;
                default:
                    BulletedList1.DisplayMode = BulletedListDisplayMode.LinkButton;
                    break;
            }
        }
    }
}