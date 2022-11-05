package cz.czechitas.java2webapps.ukol5.controller;

import cz.czechitas.java2webapps.ukol5.entity.RegistraceForm;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("")
  public ModelAndView index() {
    ModelAndView modelAndView = new ModelAndView("/formular");
    modelAndView.addObject("form", new RegistraceForm());
    return modelAndView;
  }

  @PostMapping("/")
  public String form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

    if(form.getDatumNarozeni() != null) {
      Period period = form.getDatumNarozeni().until(LocalDate.now());
      int vek = period.getYears();
      if ((9 > vek) || (vek > 15)) {
        bindingResult.rejectValue("datumNarozeni", "error.RegistraceForm", "věk je mimo dané rozmezí 9 - 15 let");
        return "/formular";
      }
    }
    else {
      bindingResult.rejectValue("datumNarozeni", "error.RegistraceForm", "datum nerození je povinný údaj");
    }

    if (bindingResult.hasErrors()) {
      return "/formular";
    }

    return "/rekapitulace";
  }
}
