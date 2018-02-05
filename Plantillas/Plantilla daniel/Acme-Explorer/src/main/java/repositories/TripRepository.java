
package repositories;

import java.util.Collection;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Trip;

@Repository
public interface TripRepository extends JpaRepository<Trip, Integer> {

	//Devolvemos todos los viajes PARA CUALQUIERA que NO est� autenticado y
	//que no est�n cancelados y adem�s tenga fecha de publicaci�n.
	//Requisito 10.2
	//Cambio: Se ha tomado la decision que se muestren todas las Trips en los no autentificados

	//Requisito 12.1
	@Query("select t from Trip t where t.publicationDate>CURRENT_TIMESTAMP")
	Collection<Trip> findAllTripsNotPublished();

	@Query("select t from Trip t where t.publicationDate>CURRENT_TIMESTAMP and t.cancelled=false")
	Collection<Trip> findAllTripsPublished();

	//Requisito 12.3
	@Query("select t from Trip t where t.publicationDate<CURRENT_TIMESTAMP and t.startDate>CURRENT_TIMESTAMP")
	Collection<Trip> findAllTripsPublishedNotStarted();

	//Requisito 12.3
	@Query("select t from Trip t where t.publicationDate<CURRENT_TIMESTAMP and t.cancelled=false")
	Collection<Trip> findAllTripsPublishedNotCancelled();

	//Requisito 13.4
	@Query("select t from Trip t join t.applicationsFor a where a.status='ACCEPTED' and t.startDate>CURRENT_TIMESTAMP")
	Collection<Trip> findTripsWhitStatusAcceptedNotStarted();

	//Requisito de informaci�n C/6.
	@Query("select t from Trip t join t.applicationsFor a where a.explorer.id=?1")
	Collection<Trip> findAllTripsApplyByExplorerId(int explorerId);

	//Suma todos los precios con iva de las stages de la trip pasada como par�metro.
	@Query("select sum(c.totalPrice) from Trip r join r.stages c where r.id=?1")
	Double findPrice(int tripId);

	@Query("select t from Trip t join t.applicationsFor a where a.id=?1")
	Collection<Trip> findAllTripsByApplicationForId(int applicationForId);

	@Query("select t from Trip t where (t.ticker like %?1% or t.title like %?1% or t.description like %?1%) and t.publicationDate<CURRENT_TIMESTAMP and t.startDate>CURRENT_TIMESTAMP")
	Page<Trip> findAllTripsByKeyWord(String search, Pageable pageable);

	@Query("select c.trips from Category c where c.id = ?1")
	Collection<Trip> findByCategory(int categoryId);

}
