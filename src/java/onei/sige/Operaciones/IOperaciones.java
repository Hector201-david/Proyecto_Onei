package onei.sige.Operaciones;

import java.sql.ResultSet;
import java.util.List;

public interface IOperaciones {

    public List<String> getModelos();

    public ResultSet getInfoModelo(String modelo);
}
