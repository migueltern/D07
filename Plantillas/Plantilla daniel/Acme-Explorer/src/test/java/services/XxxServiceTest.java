
package services;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import utilities.AbstractTest;
import domain.Trip;
import domain.Xxx;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
	"classpath:spring/datasource.xml", "classpath:spring/config/packages.xml"
})
@Transactional
public class XxxServiceTest extends AbstractTest {

	//Service under test----------------------------------------------------------
	@Autowired
	private XxxService	xxxService;

	@Autowired
	private TripService	tripService;


	@Test
	public void testCreate() {
		this.authenticate("manager1");

		Xxx result;

		result = this.xxxService.create();

		Assert.notNull(result.getManager());
		Assert.isNull(result.getGauge());
		this.authenticate(null);
	}
	@Test
	@Rollback(false)
	public void testSave() {
		this.authenticate("manager1");
		Xxx xxxAGuardar;
		Xxx guardado;
		Trip trip;
		Calendar calendar = new GregorianCalendar();

		trip = this.tripService.findOne(this.getEntityId("trip1"));

		xxxAGuardar = this.xxxService.create();

		calendar.set(2018, 3, 24, 12, 5, 0);
		Date fecha = calendar.getTime();
		xxxAGuardar.setDisplayMoment(fecha);
		xxxAGuardar.setGauge("2");
		xxxAGuardar.setText("Texto de prueba");
		xxxAGuardar.setTicker(this.xxxService.generatedTicker());
		xxxAGuardar.setTrip(trip);
		guardado = this.xxxService.save(xxxAGuardar);

		Assert.notNull(guardado);
		this.authenticate(null);

	}

	@Test
	public void testEditar() {
		this.authenticate("manager2");
		Xxx xxx2;
		Xxx actualizado;

		xxx2 = this.xxxService.findOne(this.getEntityId("xxx2"));
		xxx2.setText("texto editado");

		actualizado = this.xxxService.save(xxx2);

		Assert.isTrue(actualizado.getText().equals("texto editado"));

		this.authenticate(null);

	}

	@Test
	public void testDelete() {
		this.authenticate("manager1");
		Xxx xxxABorrar;
		xxxABorrar = this.xxxService.findOne(this.getEntityId("xxx1"));
		this.xxxService.delete(xxxABorrar);
		Assert.isNull(this.xxxService.findOne(this.getEntityId("xxx1")));
		this.authenticate(null);
	}
}
