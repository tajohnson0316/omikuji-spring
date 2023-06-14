package com.taj.omikuji.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
  @GetMapping("/")
  public String displayOmikujiForm() {
    return "omikujiForm.jsp";
  }

  @PostMapping("/process")
  public String processOmikujiForm(
    @RequestParam(value = "number") Integer number,
    @RequestParam(value = "city") String city,
    @RequestParam(value = "person") String person,
    @RequestParam(value = "profession") String profession,
    @RequestParam(value = "thing") String thing,
    @RequestParam(value = "saySomething") String saySomething,
    HttpSession session) {
    session.setAttribute("number", number);
    session.setAttribute("city", city);
    session.setAttribute("person", person);
    session.setAttribute("profession", profession);
    session.setAttribute("thing", thing);
    session.setAttribute("saySomething", saySomething);

    return "redirect:/display";
  }

  @GetMapping("/display")
  public String displayOmikujiForm(HttpSession session) {
    return "omikujiResult.jsp";
  }
}
