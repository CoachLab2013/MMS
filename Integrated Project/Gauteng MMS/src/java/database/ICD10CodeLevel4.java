/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package icd10codes;

/**
 *
 * @author Cypril
 */
public class ICD10CodeLevel4 {

    private String diag2;
    private String description;
    private String diag3;

    public ICD10CodeLevel4() {
        diag2 = "";
        description = "";
        diag3 = "";

    }
    
    public ICD10CodeLevel4(String diag2 ) {
    this.diag2 = diag2;
    }
    
    

    public ICD10CodeLevel4(String diag2, String description, String diag3) {
        this.diag2 = diag2;
        this.description = description;
        this.diag3 = diag3;


    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDiag2() {
        return diag2;
    }

    public void setDiag2(String diag2) {
        this.diag2 = diag2;
    }

    public String getDiag3() {
        return diag3;
    }

    public void setDiag3(String diag3) {
        this.diag3 = diag3;
    }
}
 