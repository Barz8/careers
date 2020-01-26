package pro.longhi.careers.services;

import pro.longhi.careers.model.Employee;

import java.util.Set;

public interface EmployeeService {

    Employee findByLastName(String lastName);
    Employee findById(Long id);
    Employee save(Employee employee);
    Set<Employee> findAll();
}
