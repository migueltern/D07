
package converters;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import domain.Xxx;

@Component
@Transactional
public class XxxToStringConverter implements Converter<Xxx, String> {

	@Override
	public String convert(final Xxx xxx) {
		String result;

		if (xxx == null)
			result = null;
		else
			result = String.valueOf(xxx.getId());
		return result;
	}

}
