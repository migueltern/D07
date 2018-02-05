
package repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Ranger;

@Repository
public interface RangerRepository extends JpaRepository<Ranger, Integer> {

	@Query("select m from Ranger m where m.userAccount.id=?1")
	Ranger findByUserAccountId(int userAccountId);

	@Query("select r from Ranger r join r.trips s where s.id=?1")
	Ranger findRangerByTripId(int tripId);
}
