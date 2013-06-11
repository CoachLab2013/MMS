/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class InformantProperty 
{
    private String informantName;
    private String informantSurname;
    private String address;
    private String propertyDecription;
    private String cash;
    private String otherGoods;
    private Witness[] witnesses;
    private String deathRegisterNumber;
    public InformantProperty()
    {
        informantName = "";
        informantSurname = "";
        propertyDecription = "";
        cash = "";
        otherGoods = "";
        witnesses = null;
        deathRegisterNumber = "";
        address = "";
    }
    public InformantProperty(String informantName,String informantSurname,String address,String propertyDecription,
    String cash,String otherGoods,Witness[] witnesses,String deathRegisterNumber)
    {
        this.informantName = informantName;
        this.informantSurname = informantSurname;
        this.propertyDecription = propertyDecription;
        this.cash = cash;
        this.otherGoods = otherGoods;
        this.witnesses = witnesses;
        this.deathRegisterNumber = deathRegisterNumber;
        this.address = address;
    }
    public String getInformantName()
    {
        return informantName;
    }
    public String getInformantSurname()
    {
        return informantSurname;
    }
    public String getAddress()
    {
        return address;
    }
    public String getPropertyDescription()
    {
        return propertyDecription;
    }
    public String getCash()
    {
        return cash;
    }
    public String getOtherGoods()
    {
        return otherGoods;
    }
    public Witness[] getWitnesses()
    {
        return witnesses;
    }
    public String getDeathRegisterNumber()
    {
        return deathRegisterNumber;
    }
    public void setInformantName(String informantName)
    {
        this.informantName = informantName;
    }
    public void setInformantSurname(String informantSurname)
    {
        this.informantSurname = informantSurname;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }
    public void setPropertyDescription(String propertyDecription)
    {
        this.propertyDecription = propertyDecription;
    }
    public void setCash(String cash)
    {
        this.cash = cash;
    }
    public void setOtherGoods(String otherGoods)
    {
        this.otherGoods = otherGoods;
    }
    public void setWitnesses(Witness[] witnesses)
    {
        this.witnesses = witnesses;
    }
    public void setDeathRegisterNumber(String deathRegisterNumber)
    {
        this.deathRegisterNumber = deathRegisterNumber;
    }
}
