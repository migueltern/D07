
package services;

import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.XxxRepository;
import domain.Manager;
import domain.Xxx;

@Service
@Transactional
public class XxxService {

	// Managed repository -----------------------------------------------------

	@Autowired
	private XxxRepository	xxxRepository;

	// Supporting services ----------------------------------------------------
	@Autowired
	private ManagerService	managerService;


	public Xxx create() {
		Assert.notNull(this.managerService.findByPrincipal());

		Date moment;
		Xxx result;
		Manager managerConnected;
		String ticker;

		result = new Xxx();
		managerConnected = this.managerService.findByPrincipal();
		moment = new Date(System.currentTimeMillis() - 1000);
		ticker = this.generatedTicker();

		result.setManager(managerConnected);
		result.setCreatedMoment(moment);
		result.setTicker(ticker);

		return result;

	}

	public Collection<Xxx> findAll() {
		Collection<Xxx> result;

		result = this.xxxRepository.findAll();
		Assert.notNull(result);
		return result;
	}

	public Xxx findOne(final int xxxId) {
		Assert.notNull(xxxId);

		Xxx result;
		result = this.xxxRepository.findOne(xxxId);

		return result;
	}

	public Xxx save(final Xxx xxx) {

		Assert.notNull(xxx);

		Assert.notNull(this.managerService.findByPrincipal());

		Xxx result;

		if (xxx.getId() != 0) {
			Date now;
			now = new Date();
			Assert.isTrue(this.managerService.findByPrincipal().equals(xxx.getManager()));
			Assert.isTrue(xxx.getDisplayMoment().after(now));

		}
		if (xxx.getId() == 0) {

			Date moment;
			Date now;
			now = new Date();
			moment = new Date(System.currentTimeMillis() - 1000);

			xxx.setCreatedMoment(moment);
			Assert.isTrue(xxx.getDisplayMoment().after(now));

		}
		result = this.xxxRepository.save(xxx);

		return result;
	}

	public void delete(final Xxx xxx) {
		Assert.isTrue(xxx.getManager().equals(this.managerService.findByPrincipal()));
		Assert.isTrue(xxx.getId() != 0);
		Assert.notNull(xxx);

		this.xxxRepository.delete(xxx);
	}
	// Other business methods -------------------------------------------------

	public String generatedTicker() {

		Calendar calendar;

		calendar = Calendar.getInstance();
		String ticker;
		String dias;
		String mes;
		ticker = "";

		//ticker = String.valueOf(calendar.get(Calendar.YEAR)).substring(2) + String.valueOf(calendar.get(Calendar.MONTH) + 1);
		dias = String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));
		mes = String.valueOf(calendar.get(Calendar.MONTH) + 1);
		if (dias.length() <= 1)
			ticker = ticker + "0" + String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));
		else
			ticker = ticker + String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));

		if (mes.length() <= 1)
			ticker = ticker + "0" + String.valueOf(calendar.get(Calendar.MONTH) + 1);
		else
			ticker = ticker + String.valueOf(calendar.get(Calendar.MONTH) + 1);
		ticker = ticker + String.valueOf(calendar.get(Calendar.YEAR)).substring(2);
		final char[] arr = new char[] {
			'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
		};
		String cadenaAleatoria = "";
		for (Integer i = 0; i <= 3; i++) {
			final char elegido = arr[(int) (Math.random() * 26)];
			cadenaAleatoria = cadenaAleatoria + elegido;

		}

		ticker = ticker + "-" + cadenaAleatoria;

		return ticker;
	}

}
