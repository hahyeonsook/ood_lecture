/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cse.maven_ood.ch08.filter;

import java.io.IOException;
import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;

/**
 *
 * @author hs
 */
public class LowerCaseOutputStream extends ServletOutputStream{
    
    private ServletOutputStream mSos = null;

    public LowerCaseOutputStream(ServletOutputStream sos) {
        mSos = sos;
    }
    
   /*LJM 110420
    *이 예제에서는 write(int b)만 사용하므로 이 메소드만 재정의함.
    *필요하다면 다른 메소드도 재정의해서 사용하면 됨.
    */

    @Override
    public void write(int b) throws IOException {
        int c = (b == -1) ? b : Character.toLowerCase(b);
        mSos.write(c);
    }

    @Override
    public boolean isReady() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setWriteListener(WriteListener writeListener) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
