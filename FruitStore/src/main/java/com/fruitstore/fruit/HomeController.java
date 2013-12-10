package com.fruitstore.fruit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.fruitstore.service.ServiceUser;
import com.fruitstore.vo.VoUser;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    @Autowired
    ServiceUser serviceUser;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        return "body";
    }
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup(Model model) {

        VoUser voUser=new VoUser();
        model.addAttribute("user", voUser);
        return "signup";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("user")VoUser voUser) {
        System.out.println(serviceUser);
        serviceUser.save(voUser);
        return "new";
    }
}