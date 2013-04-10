
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Chester)
 */
public class Employee 
{
    private String personnelNumber;
    private String password;
    private String name;
    private String surname;
    private String rank;
    private int access;
    private String role;
    /**
     * default constructor
     */
    public Employee()
    {
        personnelNumber = "";
        password = "";
        name = "";
        surname = "";
        rank = "";
        access = 0;
        role = "";
    }
    /**
     * constructs a employee object to save to database
     * @param personnelNumber should be max 10 characters in length
     * @param password min of 6 characters
     * @param name max 45 characters
     * @param surname max 45 characters
     * @param rank max 45 characters
     * @param access 1-lowest access level , 2-medium access level, 3-high access level and 4-highest access level
     * @param role pathologist,administrator,supervisor,forensic officer and facility manager
     */
    public Employee(String personnelNumber,String password,String name,String surname,String rank,int access,String role)
    {
        this.personnelNumber = personnelNumber;
        this.password = hashPassword(password);
        this.name = name;
        this.surname = surname;
        this.rank = rank;
        this.access = access;
        this.role = role;
    }
    /**
     * this constructor is meant for when and employee logs in.
     * @param personnelNumber unique to a specific employee
     * @param password must be at least 6 characters long
     */
    public Employee(String personnelNumber,String password)
    {
        this.personnelNumber = personnelNumber;
        this.password = hashPassword(password);
    }
    /*
     * Simple Hash that is always equal between C# and Java - Stack Overflow. 2012. 
     * Simple Hash that is always equal between C# and Java - Stack Overflow. [ONLINE] 
     * Available at: http://stackoverflow.com/questions/10859704/simple-hash-that-is-always-equal-between-c-sharp-and-java. 
     * [Accessed 13 July 2012].
     */
    /**
     * mathematical function to compute a set of characters unique to this password given.
     * @param password min of 6 characters long
     * @return hash of password thats 128 characters long.
     */
    private String hashPassword(String password)
    {
         StringBuilder stringBuilder = new StringBuilder();
	 try 
         {
             MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
	     messageDigest.update(password.getBytes());
	     byte hash[] = messageDigest.digest();
	     for (int i = 0; i < hash.length; i++)
             {
                 stringBuilder.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
	     }
	 } 
	 catch (NoSuchAlgorithmException e) 
	 {
             return e.getMessage();
	 }
	 return stringBuilder.toString();
    }
    /**
     * 
     * @return personnelNumber unique to a employee
     */
    public String getPersonnelNumber()
    {
        return personnelNumber;
    }
    /**
     * 
     * @return name of a employee
     */
    public String getName()
    {
        return name;
    }
    /**
     * 
     * @return surname of an employee
     */
    public String getSurname()
    {
        return surname;
    }
    /**
     * 
     * @return rank of an employee
     */
    public String getRank()
    {
        return rank;
    }
    /**
     * 
     * @return the hash of password
     */
    public String getPassword()
    {
        return password;
    }
    /**
     * 
     * @return  access of a employee
     */
    public int getAccess()
    {
        return access;
    }
    /**
     * 
     * @return role of an employee
     */
    public String getRole()
    {
        return role;
    }
    /**
     * sets hashed password using SHA-512
     * @param password 
     */
    public void setPassword(String password)
    {
        this.password = hashPassword(password);
    }
    /**
     * 
     * @param personnelNumber sets a unique number identifying a employee
     */
    public void setPersonnelNumber(String personnelNumber)
    {
        this.personnelNumber = personnelNumber;
    }
    /**
     * 
     * @param name sets a name of an employee
     */
    public void setName(String name)
    {
        this.name = name;
    }
    /**
     * 
     * @param surname sets a surname of an employee
     */
    public void setSurname(String surname)
    {
        this.surname = surname;
    }
    /**
     * 
     * @param rank sets the rank for a specific employee
     */
    public void setRank(String rank)
    {
        this.rank = rank;
    }
    /**
     * 
     * @param access sets the access of employee determined by the employees role
     */
    public void setAccess(int access)
    {
        this.access = access;
    }
    /**
     * 
     * @param role sets the role a employee plays in the organization
     */
    public void setRole(String role)
    {
        this.role = role;
    }
    
}
