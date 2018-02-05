
package domain;

import java.util.Collection;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

@Entity
@Access(AccessType.PROPERTY)
public class Manager extends Actor {

	// Attributes -------------------------------------------------------------

	// Relationships ----------------------------------------------------------

	private Collection<Trip>			trips;
	private Collection<ApplicationFor>	applicationsFor;
	private Collection<Xxx>				xxxs;


	@NotNull
	@Valid
	@OneToMany(mappedBy = "manager")
	public Collection<Trip> getTrips() {
		return this.trips;
	}

	public void setTrips(final Collection<Trip> trips) {
		this.trips = trips;
	}

	@NotNull
	@Valid
	@OneToMany(mappedBy = "manager")
	public Collection<ApplicationFor> getApplicationsFor() {
		return this.applicationsFor;
	}

	public void setApplicationsFor(final Collection<ApplicationFor> applicationsFor) {
		this.applicationsFor = applicationsFor;
	}

	@NotNull
	@Valid
	@OneToMany(mappedBy = "manager")
	public Collection<Xxx> getXxxs() {
		return this.xxxs;
	}

	public void setXxxs(Collection<Xxx> xxxs) {
		this.xxxs = xxxs;
	}

}
