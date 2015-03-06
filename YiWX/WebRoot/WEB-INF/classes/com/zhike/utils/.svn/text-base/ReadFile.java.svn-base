package com.zhike.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ReadFile {
	private  List fileList = new ArrayList();
	
	public List getFileName()
	{
		return this.fileList;
	}
    public ReadFile() {
    }
    /**
     * 读取某个文件夹下的所有文件
     */
    public  boolean readfile(String filepath) throws FileNotFoundException, IOException {
         try {

                File file = new File(filepath);
		        if (!file.isDirectory()) 
		        {
		        	if(!file.exists())
		        	{
		        		
		        	}
		        	else 
	                //System.out.println("path=" + file.getPath());
	                //System.out.println("absolutepath=" + file.getAbsolutePath());
	                //System.out.println("name=" + file.getName());
	                fileList.add(file.getName());
		        } else if (file.isDirectory()) 
		        {
		                String[] filelist = file.list();
		                for (int i = 0; i < filelist.length; i++) 
		                {
	                        File readfile = new File(filepath + "\\" + filelist[i]);
	                        if (!readfile.isDirectory()) 
	                        {
	        		        	if(!readfile.exists())
	        		        	{
	        		        		
	        		        	}
	        		        	else
	                           //System.out.println("-------------3-----------------");
                               //System.out.println("path=" + readfile.getPath());
                               //System.out.println("absolutepath="+ readfile.getAbsolutePath());
                               //System.out.println("name=" + readfile.getName());
                               fileList.add(readfile.getName());
	                        } else if (readfile.isDirectory()) {
	                            readfile(filepath + "\\" + filelist[i]);
	                        }
		                }
		
		        }
		
		} catch (FileNotFoundException e) {
		        System.out.println("readfile()   Exception:" + e.getMessage());
		}
            return true;
    }

    /**
     * 删除某个文件夹下的所有文件夹和文件
     */
    
    
    public  boolean deletefile(String delpath)
                    throws IOException {
  
                    File file = new File(delpath);
                    if (!file.isDirectory()) {
                            file.delete();
                            return true;
                    } /*else if (file.isDirectory()) {
                            System.out.println("2");
                            String[] filelist = file.list();
                            for (int i = 0; i < filelist.length; i++) {
                                    File delfile = new File(delpath + "\\" + filelist[i]);
                                    if (!delfile.isDirectory()) {
                                            System.out.println("path=" + delfile.getPath());
                                            System.out.println("absolutepath="
                                                            + delfile.getAbsolutePath());
                                            System.out.println("name=" + delfile.getName());
                                            delfile.delete();
                                            System.out.println("删除文件成功");
                                    } else if (delfile.isDirectory()) {
                                            deletefile(delpath + "\\" + filelist[i]);
                                    }
                            }
                            file.delete();

                    }*/

            
            return false;
    }
    

}
