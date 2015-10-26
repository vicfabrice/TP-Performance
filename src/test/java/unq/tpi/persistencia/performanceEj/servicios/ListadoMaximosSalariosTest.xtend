package unq.tpi.persistencia.performanceEj.servicios;

import org.junit.Test

class ListadoMaximosSalariosTest extends BaseListadoTest {
	
	@Test
	def void testListadoMaximosSalarios() {
		val fileName = "./target/MaximosSalarios.csv"
		new ListadoMaximosSalarios(fileName).generarListado();
		assertListadoLength(12, fileName);
	}
}
