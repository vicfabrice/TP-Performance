package unq.tpi.persistencia.performanceEj.servicios;

import org.junit.Test

class ListadoDetalleEmpleadoTest extends BaseListadoTest {
	
	@Test
	def void testDetalleEmpleado1() {
		val filename = "./target/DetalleEmpleado-10010.csv";
		new ListadoDetalleEmpleado(filename, 10010).generarListado();
		this.assertListadoLength(16, filename);
	}

	@Test
	def void testDetalleEmpleado2() {
		val filename = "./target/DetalleEmpleado-10019.csv";
		new ListadoDetalleEmpleado(filename, 10019).generarListado();
		this.assertListadoLength(14, filename);
	}
}
