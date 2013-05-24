/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package  AssistiveClasses;

/**
 *
 * @author Cypril
 */
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ClassSendMailTLS {

    testMail message;
    testMail emailAdd;

    public ClassSendMailTLS() {
    }

    public ClassSendMailTLS( testMail emailAdd,testMail message) {

        this.message = message;
        this.emailAdd = emailAdd;

    }
    
     public testMail getEmail() {
        return emailAdd;

    }

    public testMail getMessage() {
        return message;

    }

    public void setEmail(testMail email) {
        this. emailAdd = email;

    }

    public void setMessage(testMail message) {
        this.message = message;

    } 

    public  void sendMail(String emailAdd , String mesage ) {

       final String username = "gautengpathologyservices@gmail.com";
       final String password = "12345!@#$%";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("limoraka@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(emailAdd));
            message.setSubject("New MMS USER");
            message.setText(mesage);

            Transport.send(message);

            System.out.println("sent");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    //
}
