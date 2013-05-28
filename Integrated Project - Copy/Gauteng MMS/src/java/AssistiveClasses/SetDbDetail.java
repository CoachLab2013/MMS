/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AssistiveClasses;

import database.DbDetail;
import servlets.Tools;

/**
 *
 * @author Sandile
 */
public class SetDbDetail {
    private DbDetail dbdetail;

    public DbDetail getDbdetail() {
        return dbdetail;
    }

    public void setDbdetail(DbDetail dbdetail) {
        this.dbdetail = dbdetail;
    }

    public SetDbDetail() {
        Tools t = new Tools();
        dbdetail= t.getDbdetail();
    }
}
