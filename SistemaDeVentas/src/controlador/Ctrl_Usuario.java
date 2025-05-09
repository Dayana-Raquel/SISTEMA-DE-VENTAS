package controlador;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import modelo.Usuario;

/**
 *
 * @author HP RYZEN 3
 */
public class Ctrl_Usuario {

    //metodo para Iniciar Sesión
    public boolean loginUser(Usuario objeto) {
        boolean respuesta = false;

        Connection cn = Conexion.conectar();
        String sql = "SELECT usuario, password FROM tb_usuario WHERE usuario = '" + objeto.getUsuario() + "' AND password = '" + objeto.getPassword() + "'";
        Statement st;
        try {
            st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                respuesta = true;
            }
        } catch (SQLException e) {
            System.out.println("Error al Iniciar Sesión");
            JOptionPane.showMessageDialog(null, "Error al Iniciar Sesión");
        }

        return respuesta;
    }
}
