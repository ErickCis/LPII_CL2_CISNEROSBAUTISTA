package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import interfaces.IUsuariocl2;
import model.TblUsuariocl2;

public class ClassUsuariocl2Imp implements IUsuariocl2{
	
	public TblUsuariocl2 ValidarUsuario(String usuario, String password) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("LPII_CL2_CISNEROSBAUTISTA");
		EntityManager em = emf.createEntityManager();
		try{
			TypedQuery<TblUsuariocl2> query = em.createQuery(
					"SELECT u FROM TblUsuariocl2 u WHERE u.usuariocl2 = :usuario AND u.passwordcl2 = :password",TblUsuariocl2.class);
			query.setParameter("usuario", usuario);
			query.setParameter("password", password);
			
			return query.getSingleResult();
		}//fin del try
		catch(NoResultException e){
			return null;
		}
		finally{
			em.close();
		}
	}
}
