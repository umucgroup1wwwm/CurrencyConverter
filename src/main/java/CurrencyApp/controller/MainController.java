package CurrencyApp.controller;

import CurrencyApp.model.CurrencyUser;
import CurrencyApp.service.CurrencyUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
public class MainController {

    @Autowired
    private CurrencyUserService currencyUserService;

    @GetMapping("/")
    public String home(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "index";
    }
////	@GetMappi8return taskService.findAll().toString();
////	}


    @GetMapping("/all-currencyusers")
    public String allCurrencyUsers(HttpServletRequest request) {
        request.setAttribute("currencyusers", currencyUserService.findAll());
        request.setAttribute("mode", "MODE_CURRENCYUSERS");
        return "index";
    }
    //////you must chnage jsp and controler to change pages in a html
    /////////	<%--/////////////111111111////////////////////--%>

    @GetMapping("/sign-up")
    public String signupCurrencyUser(HttpServletRequest request) {
        request.setAttribute("mode", "SIGN_UP");
        return "index";
    }
    ///////////////
    @GetMapping("/my-currencyuser")
    public String myCurrencyUser(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_UPDATE");
        return "index";
    }

    ////////////
    ///////////////
    @GetMapping("/new-currencyuser")
    public String newCurrencyUser(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_NEW");
        return "index";
    }

    ////////////

    @PostMapping("/save-currencyuser")
    public String saveCurrencyUser(@ModelAttribute CurrencyUser currencyUser, BindingResult bindingResult, HttpServletRequest request) {
         currencyUserService.save(currencyUser);
        request.setAttribute("tasks", currencyUserService.findAll());
        request.setAttribute("mode", "MODE_CURRENCYUSERS");
        return "index";
    }

    @GetMapping("/update-currencyuser")
    public String updateCurrencyUser(@RequestParam int id, HttpServletRequest request) {
        request.setAttribute("task", currencyUserService.findCurrencyUser(id));
        request.setAttribute("mode", "MODE_UPDATE");
        return "index";
    }

    @GetMapping("/delete-currencyuser")
    public String deleteCurrencyUser(@RequestParam int id, HttpServletRequest request) {
        currencyUserService.delete(id);
        request.setAttribute("tasks", currencyUserService.findAll());
        request.setAttribute("mode", "MODE_CURRENCYUSERS");
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("errorMsg", "Your username and password are invalid.");

        if (logout != null)
            model.addAttribute("msg", "You have been logged out successfully.");

        return "login";
    }
}
