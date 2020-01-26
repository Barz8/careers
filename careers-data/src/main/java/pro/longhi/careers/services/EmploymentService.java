package pro.longhi.careers.services;

import pro.longhi.careers.model.Employee;
import pro.longhi.careers.model.Employment;

import java.util.Set;

public interface EmploymentService {

    Employment findById(Long id);
    Employment save(Employment employment);
    Set<Employment> findAll();
}
