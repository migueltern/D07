
package repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Manager;
import domain.Xxx;

@Repository
public interface XxxRepository extends JpaRepository<Xxx, Integer> {

	@Query("select (select count(m) from Manager m where m.xxxs.size>=1) *1.0/ count(x) from Xxx x")
	Double findRatioOfManagerWith1XxxOrMore();

	@Query("select m from Manager m where m.xxxs.size=(select max(t.xxxs.size) from Trip t)")
	Manager managerWithMoreXxxInTrip();
}
