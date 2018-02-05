
package converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import repositories.XxxRepository;
import domain.Xxx;

@Component
@Transactional
public class StringToXxxConverter implements Converter<String, Xxx> {

	@Autowired
	XxxRepository	xxxRepository;


	@Override
	public Xxx convert(String text) {
		Xxx result;
		int id;

		try {
			id = Integer.valueOf(text);
			result = this.xxxRepository.findOne(id);
		} catch (final Throwable oops) {
			throw new IllegalArgumentException(oops);
		}
		return result;
	}
}
