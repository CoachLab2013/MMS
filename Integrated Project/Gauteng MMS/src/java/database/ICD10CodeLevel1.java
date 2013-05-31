/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package icd10codes;

/**
 *
 * @author Cypril
 */  
public class ICD10CodeLevel1 {

    // level 1 
    private String description;
    private int chapter;

    public ICD10CodeLevel1() {
        description = "";
        chapter = 0;
    }

    public ICD10CodeLevel1(String description) {
        
        this.description = description;
    }

    public ICD10CodeLevel1(int chapter) {
        this.chapter = chapter;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // chapter
    public int getChapter() {
        return chapter;
    }

    public void setChapter(int chapter) {
        this.chapter = chapter;
    }
}
