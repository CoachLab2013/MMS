/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Sandile
 */
public class OrganisationType {
       private String type;

    public OrganisationType( ) {
       type ="" ;
    }

    public OrganisationType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
