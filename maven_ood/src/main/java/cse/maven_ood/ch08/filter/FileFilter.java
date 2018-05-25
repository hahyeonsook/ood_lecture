/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cse.maven_ood.ch08.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.StringTokenizer;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author hs
 */
public class FileFilter implements Filter {
    
    private static final boolean debug = true;

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    private FilterConfig filterConfig = null;
    
    public FileFilter() {
    }    
    
    private boolean doBeforeProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        boolean status = true;
        if (debug) {
            log("FileFilter:DoBeforeProcessing");
        }
        
        HttpServletRequest httpReq = (HttpServletRequest) request;
        httpReq.setCharacterEncoding("UTF-8");
        String fileName = httpReq.getParameter("file_name");
        StringTokenizer st = new StringTokenizer(fileName, ".");
        String lastToken = null;
        while(st.hasMoreTokens()){
            lastToken = st.nextToken();
        }
        if(!lastToken.equals("txt")){
            //This fils is not a "txt" format.
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            
            out.println("<html>");
            out.println("<head>");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
            out.println("<title>부적절한 파일 포맷!!</title>");
            out.println("</head>");
            out.println("\"txt\" 형태가 아닌 파일을 선택하여 내려 받기가 거부되었습니다. <br/>");
            out.println("(파일명: " + fileName + ")");
            out.println("</html>");
            out.close();
            status=false;
        }
        
        return status;
    }    
    
    private void doAfterProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("FileFilter:DoAfterProcessing");
        }

        
    }

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
        if (debug) {
            log("FileFilter:doFilter()");
        }
        
        boolean status = doBeforeProcessing(request, response);
        
        Throwable problem = null;
        try {
            if(status == true){
                chain.doFilter(request, response);
            }
        } catch (Throwable t) {
            // If an exception is thrown somewhere down the filter chain,
            // we still want to execute our after processing, and then
            // rethrow the problem after that.
            t.printStackTrace();
        }
        
        doAfterProcessing(request, response);

    }

    /**
     * Destroy method for this filter
     */
    public void destroy() {        
    }

    /**
     * Init method for this filter
     */
    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
            if (debug) {                
                log("FileFilter:Initializing filter");
            }
        }
    }

    
    public void log(String msg) {
        filterConfig.getServletContext().log(msg);        
    }
    
}
