/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class Property 
{
    private String sealNumber;
    private String description;
    private String date;
    private String type;
    private String sealType;
    private String takenBy;
    private Witness[] witnesses;
    private String SAPS_name;
    private String SAPS_surname;
    private boolean SAPS_taken;
    private String deathRegisterNumber;
    private boolean released;
    public Property()
    {
        
    }
    public Property(String sealNumber)
    {
        this.sealNumber = sealNumber;
    }
    public Property(String sealNumber,String description,String date,String type,String sealType,String takenBy,Witness[] witnesses,String SAPS_name,String SAPS_surname,boolean SAPS_taken,String deathRegisterNumber,boolean released)
    {
        this.sealNumber = sealNumber;
        this.description = description;
        this.date = date;
        this.type = type;
        this.sealType = sealType;
        this.takenBy = takenBy;
        this.witnesses = witnesses;
        this.SAPS_name = SAPS_name;
        this.SAPS_surname = SAPS_surname;
        this.SAPS_taken = SAPS_taken;
        this.deathRegisterNumber = deathRegisterNumber;
        this.released = released;
    }
    public String getSealNumber()
    {
        return sealNumber;
    }
    public String getDescription()
    {
        return description;
    }
    public String getDate()
    {
        return date;
    }
    public String getType()
    {
        return type;
    }
    public String getSealType()
    {
        return sealType;
    }
    public String getTakenBy()
    {
        return takenBy;
    }
    public Witness getWitness(int index)
    {
        return witnesses[index];
    }
    public String getSAPS_name()
    {
        return SAPS_name;
    }
    public String getSAPS_surname()
    {
        return SAPS_surname;
    }
    public boolean isTakenBySAPS()
    {
        return SAPS_taken;
    }
    public String getDeathRegisterNumber()
    {
        return deathRegisterNumber;
    }
    public boolean isReleased()
    {
        return released;
    }
    public void setSealNumber(String sealNumber)
    {
        this.sealNumber = sealNumber;
    }
    public void setDescription(String description)
    {
        this.description = description;
    }
    public void setDate(String date)
    {
        this.date = date;
    }
    public void setType(String type)
    {
        this.type = type;
    }
    public void setSealType(String sealType)
    {
        this.sealType = sealType;
    }
    public void setTakenBy(String takenBy)
    {
        this.takenBy = takenBy;
    }
    public void setWitnesses(Witness[] witnesses)
    {
        this.witnesses = witnesses;
    }
    public void setSAPS_name(String SAPS_name)
    {
        this.SAPS_name = SAPS_name;
    }
    public void setSAPS_surname(String SAPS_surname)
    {
        this.SAPS_surname = SAPS_surname;
    }
    public void setTakenBySAPS(boolean SAPS_taken)
    {
        this.SAPS_taken = SAPS_taken;
    }
    public void setDeathRegisterNumber(String deathRegisterNumber)
    {
       this.deathRegisterNumber = deathRegisterNumber;
    }
    public void setReleased(boolean released)
    {
        this.released = released;
    }
}
