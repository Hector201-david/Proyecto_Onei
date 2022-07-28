package onei.sige.Operaciones;

import onei.sige.Conexiones.classConexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Operaciones implements IOperaciones {

    Connection miConexion = classConexion.getInstance().getConexion();

    @Override
    public List<String> getModelos() {
        List<String> listaModelos = new ArrayList<>();
        try {
            Statement miSentencia = miConexion.createStatement();
            String sql = "select table_name from information_schema.tables where table_schema='mod_modelos' and table_type = 'BASE TABLE' order by table_name;";

            ResultSet rs = miSentencia.executeQuery(sql);
            while (rs.next()) {
                listaModelos.add(rs.getString(1));
            }
        } catch (Exception e) {
            System.out.println("Error al leer la bd: " + e.getMessage());
        } finally {
            try {
                miConexion.close();
            } catch (Exception ex) {
                System.out.println("Error al cerrar la conexion: " + ex.getMessage());
            }
        }
        return listaModelos;
    }

    @Override
    public ResultSet getInfoModelo(String modelo) {

        ResultSet rs = null;
        List<String> listaModelos = getModelos();

        for (int i = 0; i < listaModelos.size(); i++) {
            if (listaModelos.get(i).equalsIgnoreCase(modelo)) {
                try {
                    Statement miSentencia = miConexion.createStatement();

                    rs = miSentencia.executeQuery("SELECT * FROM mod_modelos." + modelo);

                    break;
                } catch (Exception ex) {
                }
            }
        }
        return rs;
    }
}
