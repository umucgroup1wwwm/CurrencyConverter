package CurrencyApp.dao;

import CurrencyApp.model.CurrencyUser;
import org.springframework.data.repository.CrudRepository;

/// can be japRepositiry(object,promaryKey)
public interface CurrencyUserRepository extends CrudRepository<CurrencyUser, Integer> {

}
