/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packserver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;

/**
 *
 * @author ramkr
 */
public class Connect {
     public static OracleConnection Ocon;
     public static OraclePreparedStatement ost;
    public static OraclePreparedStatement conect(String oracleQuery) throws SQLException{
        DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
        Ocon = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@Ramkrishna:1521:orcl","SMIT","LUCK");
        ost=(OraclePreparedStatement) Ocon.prepareStatement(oracleQuery);
        return ost;
    }
}
