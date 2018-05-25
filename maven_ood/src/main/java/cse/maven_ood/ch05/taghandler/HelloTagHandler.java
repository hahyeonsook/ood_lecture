/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cse.maven_ood.ch05.taghandler;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hs
 */
public class HelloTagHandler extends SimpleTagSupport {
    private String user;
    private int count = 1;
    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            for(int i=0; i<count; i++)
                out.println(user + "님, 안녕하십니까? <br/>");
            
            JspFragment f = getJspBody();
            
            if(f != null) f.invoke(out);
            
        } catch (java.io.IOException ex) {
            throw new JspException("Error in HelloTagHandler tag", ex);
        }
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setCount(int count) {
        this.count = count;
    }
    
    
}
