/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class BodyAtSceneDb extends DatabaseConnector
{
    private BodyAtScene bodyAtScene;
    public BodyAtSceneDb(DbDetail dbDetail,BodyAtScene bodyAtScene)
    {
        super(dbDetail);
        this.bodyAtScene = bodyAtScene;
    }
    public BodyAtSceneDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    @Override
    public String add() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String read() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String edit() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String delete() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
