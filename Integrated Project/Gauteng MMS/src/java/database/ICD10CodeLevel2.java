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
public class ICD10CodeLevel2 {

    private String diag1;
    private String description;
    private int Level1chapter;

    public ICD10CodeLevel2() {
        diag1 = "";
        description="";
        Level1chapter = 0;
    }
    
     public ICD10CodeLevel2(int Level1chapter) {
        this.Level1chapter = Level1chapter;
     
    }
    
    
     public ICD10CodeLevel2(String diag1) {
        this.diag1 = diag1;
     
    }
<<<<<<< HEAD
     
     public ICD10CodeLevel2(String diag1, String description) {
        this.diag1 = diag1;
        this.description = description;
        
    }
=======
>>>>>>> origin/master

    public ICD10CodeLevel2(String diag1, String description, int Level1chapter) {
        this.diag1 = diag1;
        this.description = description;
        this.Level1chapter = Level1chapter;
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

    public void setLevel1chapter(int Level1chapter) {
        this.Level1chapter = Level1chapter;
    }

    public int getLevel1chapter() {
        return Level1chapter;
    }
}
<<<<<<< HEAD
   
=======
 
>>>>>>> origin/master
