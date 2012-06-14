using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;

public class Util
{
	public Util()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static int saltUser(string s) // funkciju saltUser pozivamo u Registraciji.aspx.cs
    {
        int suma = 0;
        foreach (Char c in s)
            // za svaki znak(Char) u (string s) uzima njegov ASCII vrijednost i dodaje u sumu
            // npr. s = drsu i to je u sumi ASCII od svakog slova(znaka) zbrojeno 
            suma += c;
        return suma;
    }

    // original, samo copy-paste
    public static string SHA256(string input)
    {
        SHA256 sha256 = new SHA256Managed();
        byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
        byte[] hash = sha256.ComputeHash(inputBytes);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < hash.Length; i++)
            sb.Append(hash[i].ToString("X2"));
        return sb.ToString();
    }

    public static string SendMail(string gooLogin, string gooPassword, string toList, string from, string ccList, string subject, string body)
    {

    MailMessage message = new MailMessage();
    SmtpClient smtpClient = new SmtpClient();
    string msg = string.Empty;
    try
    {
        MailAddress fromAddress = new MailAddress(from);
        message.From = fromAddress;
        message.To.Add(toList);
        
	if (ccList != null && ccList != string.Empty)
            message.CC.Add(ccList);

        message.Subject = subject;
        message.IsBodyHtml = true;
        message.Body = body;

        smtpClient.Host = "smtp.gmail.com";   
        smtpClient.Port = 587;
        smtpClient.EnableSsl = true;
        smtpClient.UseDefaultCredentials = true;
        smtpClient.Credentials = new System.Net.NetworkCredential(gooLogin, gooPassword);

        smtpClient.Send(message);
        msg = "Vaša poruka je uspješno poslana! Hvala!";
    }
    catch (Exception ex)
    {
        msg = ex.Message;
    }
    return msg;
    }


}
