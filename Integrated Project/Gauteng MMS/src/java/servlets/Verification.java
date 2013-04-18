/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

/**
 *
 * @author Administrator
 */
public class Verification {
    
    /**
     * Constructor for an instance of Verification
     */
    public Verification(){
        
    }
    //end constructor
    
    /**
     * Verify if a personnel number is in the correct format
     * @param personnelnumber the personnel number of the user
     */
    public boolean checkFormatOfPersonnelNumber(String personnelnumber){
        //check the length of the input personnell number
        if(personnelnumber.length() != 8){
            return false;
        }
        else{
         /*first try to convert the input personnel number to an integer if it fails then
         the input number does not consist of numbers only*/
            try{
                Integer.parseInt(personnelnumber);
                return true;
            }
            catch(Exception e){
                return false;
            }
        }
    }
    //end verifyPersonnelNumber
    
    /**
     * Verify the length of the given parameter is the same as the length specified.
     * @param input the string that needs its length checked
     * @param length the desired length oh the given string
     */
    public boolean checkLength(String input, int length){
        if(input.length()!= length){
            return false;
        }
        else{
            return true;
        }
    }
    //end checkLength
}
//end Verification class