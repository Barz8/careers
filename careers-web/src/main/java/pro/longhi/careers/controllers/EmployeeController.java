package pro.longhi.careers.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pro.longhi.careers.services.EmployeeService;

@RequestMapping("/employees")
@Controller
public class EmployeeController {

    private EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @RequestMapping("")
    public String getEmployees(Model model){
        model.addAttribute("employees", employeeService.findAll());
        return "employees";
    }
}
