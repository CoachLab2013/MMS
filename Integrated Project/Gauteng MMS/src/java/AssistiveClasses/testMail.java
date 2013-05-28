/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AssistiveClasses;

/**
 *
 * @author Cypril
 */
public class testMail {

    private String emailAdd;
    private String message;

    public testMail() {
        emailAdd = "";
        message = "";

    }

    public testMail(String emailAdd, String message) {
        this.emailAdd = emailAdd;
        this.message = message;
    }

    public String getEmail() {
        return emailAdd;

    }

    public String getMessage() {
        return message;

    }

    public void setEmail(String email) {
        this.emailAdd = email;

    }

    public void setMessage(String message) {
        this.message = message;

    }
}
