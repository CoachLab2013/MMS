/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Bandile
 */
public class PostMortemDb extends DatabaseConnector
{
    private PostMortem postMortem;
    public PostMortemDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    public PostMortemDb(PostMortem postMortem,DbDetail dbDetail)
    {
        super(dbDetail);
        this.postMortem = postMortem;
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
    public PostMortem getPostMortem()
    {
        return postMortem;
    }
    public void setPostMortem(PostMortem postMortem)
    {
        this.postMortem = postMortem;
    }
    
}
