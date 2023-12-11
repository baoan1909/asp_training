using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class bai9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Mặc định hiển thị View1 khi trang được tải lần đầu tiên
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Chuyển sang View1 khi nhấn vào LinkButton1
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            // Chuyển sang View2 khi nhấn vào LinkButton2
            MultiView1.ActiveViewIndex = 1;
            ShowUploadedFiles();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Xử lý khi nhấn nút Upload
            if (FileUpload1.HasFile)
            {
                try
                {
                    string folderPath = Server.MapPath("~/upload/");
                    string fileName = Path.GetFileName(FileUpload1.FileName);

                    FileUpload1.SaveAs(Path.Combine(folderPath, fileName));

                    // Sau khi upload xong, chuyển sang View2 và hiển thị danh sách các tập tin
                    MultiView1.ActiveViewIndex = 1;
                    ShowUploadedFiles();
                }
                catch(Exception ex)
                {
                    TextBox1.Text = "Lỗi" + ex.Message;
                }
            }
            else{
                TextBox1.Text = "Vui lòng chọn tập tin để upload";
            }
        }

        private void ShowUploadedFiles()
        {
            // Hiển thị danh sách các tập tin đã upload trong TextBox1
            string folderPath = Server.MapPath("~/upload/");
            string[] files = Directory.GetFiles(folderPath);

            for (int i = 0; i < files.Length; i++)
            {
                files[i] = Path.GetFileName(files[i]);
            }

            TextBox1.Text = string.Join(Environment.NewLine, files);
        }
    }
}