
package domain;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Access(AccessType.PROPERTY)
public class Xxx extends DomainEntity {

	// Attributes -------------------------------------------------------------

	private String	ticker;
	private String	gauge;
	private Date	displayMoment;
	private String	text;
	private Date	createdMoment;


	@NotBlank
	@Column(unique = true)
	@Pattern(regexp = "^\\d{2}(0[1-9]{1}|1[0-2]{1})((0|1|2)\\d{1}|3[0-1]{1})\\-[A-Z]{4}$")
	public String getTicker() {
		return this.ticker;
	}

	public void setTicker(String ticker) {
		this.ticker = ticker;
	}

	@NotBlank
	@Pattern(regexp = "^[123]$")
	public String getGauge() {
		return this.gauge;
	}

	public void setGauge(String gauge) {
		this.gauge = gauge;
	}

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm")
	public Date getDisplayMoment() {
		return this.displayMoment;
	}

	public void setDisplayMoment(Date displayMoment) {
		this.displayMoment = displayMoment;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm")
	@Past
	public Date getCreatedMoment() {
		return this.createdMoment;
	}

	public void setCreatedMoment(Date createdMoment) {
		this.createdMoment = createdMoment;
	}


	// Relationships ----------------------------------------------------------

	private Trip	trip;
	private Manager	manager;


	@NotNull
	@Valid
	@ManyToOne(optional = false)
	public Trip getTrip() {
		return this.trip;
	}

	public void setTrip(Trip trip) {
		this.trip = trip;
	}

	@NotNull
	@ManyToOne(optional = false)
	@Valid
	public Manager getManager() {
		return this.manager;
	}

	public void setManager(Manager manager) {
		this.manager = manager;
	}

}
