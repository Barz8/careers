package pro.longhi.careers.services;

import pro.longhi.careers.model.Employee;

public interface EmployeeService extends CrudService<Employee, Long>{

    Employee findByLastName(String lastName);
}
