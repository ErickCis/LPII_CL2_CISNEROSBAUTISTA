package test;

import java.util.List;

import dao.ClassProductocl2Imp;
import model.TblProductocl2;

public class TestProducto {
	
	public static void main(String[] args) {
		
		TblProductocl2 producto = new TblProductocl2();
		ClassProductocl2Imp crud = new ClassProductocl2Imp();
		

		/*Metodo Registrar*/
		/*
		producto.setNombrecl2("Erickson");
		producto.setPrecioventacl2(10.0);
		producto.setPreciocompcl2(9.0);
		producto.setEstadocl2("Pasable");
		producto.setDescripcl2("Aceite");
		crud.RegistrarProductocl2(producto);
		*/
		/*Metodo Registrar*/
		
		producto.setNombrecl2("Juan");
		producto.setPrecioventacl2(5.0);
		producto.setPreciocompcl2(3.0);
		producto.setEstadocl2("Bueno");
		producto.setDescripcl2("Avena");
		crud.RegistrarProductocl2(producto);
		
		

		/*Metodo Listar*/
		List<TblProductocl2> listarProducto = crud.ListadoProductocl2();
		for(TblProductocl2 p:listarProducto){ 
			System.out.println("Codigo: "+p.getIdproductocl2()+"\n"+
							   "Nombre: "+p.getNombrecl2()+"\n"+
							   "Precio de Venta: "+p.getPrecioventacl2()+"\n"+
							   "Precio de Compra: "+p.getPreciocompcl2()+"\n"+
							   "Estado: "+p.getEstadocl2()+"\n"+
							   "Descripcion: "+p.getDescripcl2()+"\n");			
		}
		
	}
}
