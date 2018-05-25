/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cse.maven_ood.ch07.beans;

/**
 *
 * @author hs
 */

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FileListBean {
    
    private String dirName;
    private List<String> relativeFileList = new ArrayList<String>();
    private List<String> absoluteFileList = new ArrayList<String>();

    public FileListBean() {
    }

    public String getDirName() {
        return dirName;
    }

    public List<String> getRelativeFileList() {
        return relativeFileList;
    }

    public List<String> getAbsoluteFileList() {
        return absoluteFileList;
    }

    public void setDirName(String dirName) {
        this.dirName = dirName;
        readDirectory();
    }
    
    
    /*
    * 디렉토리 dirName에 있는 파일 이름을 읽어들임.
    */
    private void readDirectory() {
        File dir = new File(dirName);
        
        if(dir.isDirectory()){
            File[] files = dir.listFiles();
            for(File f : files){
                relativeFileList.add(f.getName());
                absoluteFileList.add(f.getAbsolutePath());
            }
        }

//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
