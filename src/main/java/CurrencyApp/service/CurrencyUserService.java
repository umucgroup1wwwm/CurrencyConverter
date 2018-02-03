package CurrencyApp.service;

import CurrencyApp.dao.CurrencyUserRepository;
import CurrencyApp.model.CurrencyUser;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class CurrencyUserService {///buisness logic, crude operations,

    private final CurrencyUserRepository currencyUserRepository;

    public CurrencyUserService(CurrencyUserRepository currencyUserRepository) {
        this.currencyUserRepository = currencyUserRepository;
    }

    public List<CurrencyUser> findAll() {
                            //currenccyuser has to be same name in
                            //index.jsp >>>> <c:forEach var="currencyuser" items="${currencyusers}">
                            //main controller >>>>  request.setAttribute("currencyusers", currencyUserService.findAll());

        List<CurrencyUser> currencyusers = new ArrayList<>();
        for (CurrencyUser currencyUser : currencyUserRepository.findAll()) {
            currencyusers.add(currencyUser);
        }
        return currencyusers;
    }

    public CurrencyUser findCurrencyUser(int id) {
        return currencyUserRepository.findOne(id);
    }

    public void save(CurrencyUser currencyUser) {
        currencyUserRepository.save(currencyUser);
    }

    public void delete(int id) {
        currencyUserRepository.delete(id);
    }
}
