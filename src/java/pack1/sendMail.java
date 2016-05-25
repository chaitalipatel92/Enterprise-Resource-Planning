package pack1;

import java.util.Properties;
import javax.mail.PasswordAuthentication;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class sendMail 
{
public String mail1(String e, String sub, String msg)
{
        final String username="chaitalipatel92@gmail.com";
        final String pass="sweetykomal";

        Properties props =new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");


        javax.mail.Authenticator auth=new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication(username, pass);
            }
        };

        Session s = Session.getInstance(props, auth);

        try{
          Message m =new MimeMessage(s);

          m.setFrom(new InternetAddress("chaitalipatel92@gmail.com"));
          m.setRecipients(Message.RecipientType.TO, InternetAddress.parse(e));
          m.setSubject(sub);
          m.setText(msg);
          Transport.send(m);
         return "mail send";
        }
        catch(Exception e1){
            return e1.getMessage();
        }
    }

}

