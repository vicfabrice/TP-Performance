package unq.tpi.persistencia.performanceEj.servicios;

import org.junit.Test

class ListadosDeptosTest extends BaseListadoTest {

	@Test
	def void testListadoPagosPorDepto() {
		val filename = "./target/PagosPorDepto-d007.csv"
		new ListadoPagosPorDepto(filename, "d007").generarListado();
		assertListadoLength(37_706, filename);
	}
}