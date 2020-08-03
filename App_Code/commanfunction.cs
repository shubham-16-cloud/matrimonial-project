using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for commanfunction
/// </summary>
public class commanfunction
{
    public commanfunction()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static String imgupload(FileUpload upload1, String path, String[] extension)
    {
        
        string fullpath = "";
        if (upload1.HasFile)
        {
            string uploadpath = path;

            bool fileformatok = false;
            string ex = Path.GetExtension(upload1.FileName);
            for (int i = 0; i <= extension.Length - 1; i++)
            {
                if (ex == extension[i])
                {
                    fileformatok = true;
                    break;
                }
            }
            if (fileformatok == true)
            {
                fullpath = uploadpath + upload1.FileName;
                HttpContext.Current.Session["fullpath"] = fullpath;

                upload1.SaveAs(HttpContext.Current.Server.MapPath(fullpath));
            }

        }
        return fullpath;
    }
}