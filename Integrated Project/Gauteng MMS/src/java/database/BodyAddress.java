/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class BodyAddress 
{
    private String building;
    private String street;
    private String suburb;
    private String city;
    private String postCode;
    private String province;
    private String region;
    private String magisterialDistrict;
    public BodyAddress()
    {
        this.building = "null";
        this.street = "null";
        this.suburb = "null";
        this.city = "null";
        this.postCode = "null";
        this.province = "null";
        this.region = "null";
        this.magisterialDistrict = "null";
    }
    public BodyAddress(String building,String street,String suburb,String city,String postCode,String province,String region,String magisterialDistrict)
    {
        this.building = building;
        this.street = street;
        this.suburb = suburb;
        this.city = city;
        this.postCode = postCode;
        this.province = province;
        this.region = region;
        this.magisterialDistrict = magisterialDistrict;
    }
    /**
     * 
     * @return  String building name
     */
    public String getBuilding()
    {
        return building;
    }
    /**
     * 
     * @return String street name 
     */
    public String getStreet()
    {
        return street;
    }
    /**
     * 
     * @return String suburb name
     */
    public String getSuburb()
    {
        return suburb;
    }
    /**
     * 
     * @return String city name
     */
    public String getCity()
    {
        return city;
    }
    /**
     * 
     * @return String postal code of an area
     */
    public String getPostCode()
    {
        return postCode;
    }
    /**
     * 
     * @return String province name
     */
    public String getProvince()
    {
        return province;
    }
    /**
     * 
     * @return String region name
     */
    public String getRegion()
    {
        return region;
    }
    /**
     * 
     * @return String MagisterialDistrict name
     */
    public String getMagisterialDistrict()
    {
        return magisterialDistrict;
    }
    /**
     * 
     * @param building set the name
     */
    public void setBuilding(String building)
    {
        this.building = building;
    }
    /**
     * 
     * @param street set the name
     */
    public void setStreet(String street)
    {
        this.street = street;
    }
    /**
     * 
     * @param suburb set the name
     */
    public void setSuburb(String suburb)
    {
        this.suburb = suburb;
    }
    /**
     * 
     * @param city set name
     */
    public void setCity(String city)
    {
        this.city = city;
    }
    /**
     * 
     * @param postCode set code
     */
    public void setPostCode(String postCode)
    {
        this.postCode = postCode;
    }
    /**
     * 
     * @param province set name
     */
    public void setProvince(String province)
    {
        this.province = province;
    }
    /**
     * 
     * @param region set name
     */
    public void setRegion(String region)
    {
        this.region = region;
    }
    /**
     * 
     * @param magisterialDistrict set the name
     */
    public void setMagisterialDistrict(String magisterialDistrict)
    {
        this.magisterialDistrict = magisterialDistrict;
    }
}
