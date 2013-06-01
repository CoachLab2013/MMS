/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
<<<<<<< HEAD
package icd10codes;
=======
package database;
>>>>>>> origin/master

/**
 *
 * @author Cypril 
 */
public class ICD10CodeLevel3 {

    private String diag1;
    private String description;
    private String diag2;

    public ICD10CodeLevel3() {
        diag1 = "";
        description = "";
        diag2 = "";
 
    }
  public ICD10CodeLevel3(String diag1) {
      
        this.diag1 = diag1;

    }
    public ICD10CodeLevel3(String diag1,String diag2 ,String description ) {
        this.diag1 = diag1;
        this.diag2 = diag2;
        this.description = description;
     
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDiag1() {
        return diag1;
    }

    public void setDiag1(String diag1) {
        this.diag1 = diag1;
    }


    public String getDiag2() {
        return diag2;
    }

    public void setDiag2(String diag2) {
        this.diag2 = diag2;
    }
}
