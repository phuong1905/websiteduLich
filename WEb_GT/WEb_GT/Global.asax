<%@ Application Language="C#" %>

<script language="c#" runat=server>
    void Application_Start(object sender, EventArgs e)
    {
        //Khai báo biến  và gán giá trị
        double SoNguoiDangTruyCap = 0;
        Application["CurrentUsers"] = SoNguoiDangTruyCap;

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        int count_visit;
        //Kiem tra file count_visit.txt co ton tai hay khong neu khong ton tai thi
        if (System.IO.File.Exists(Server.MapPath("count_visit.txt")) == false)
        {
            count_visit = 1;
        }
        //Nguoc lai thi doc du lieu tu file count_vistit.txt
        else
        {
            System.IO.StreamReader RD = new System.IO.StreamReader(Server.MapPath("count_visit.txt"));
            count_visit = int.Parse(RD.ReadLine());
            RD.Close();
            //Tăng biến count_visit thêm 1
            count_visit++;
        }
        //Khóa website
        Application.Lock();
        //Gan bien Application count_visit
        Application["count_visit"] = count_visit;
        //Mở khóa Website
        Application.UnLock();
        //Lưu dữ liệu vào file count_visit
        System.IO.StreamWriter Write = new System.IO.StreamWriter(Server.MapPath("count_visit.txt"));
        Write.WriteLine(count_visit);
        Write.Close();
        //So nguoi dang onlne
        Application["CurrentUsers"] = Convert.ToDouble(Application["CurrentUsers"].ToString()) + 1;


    }

    void Session_End(object sender, EventArgs e)
    {

        Application["CurrentUsers"] = Convert.ToDouble(Application["CurrentUsers"].ToString()) - 1;

    }
</script>
