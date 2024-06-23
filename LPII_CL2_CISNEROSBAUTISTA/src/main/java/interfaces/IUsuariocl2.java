package interfaces;

import model.TblUsuariocl2;

public interface IUsuariocl2 {
	TblUsuariocl2 ValidarUsuario(String usuario, String password);
}
