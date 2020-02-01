package pro.longhi.careers.repositories;

import org.springframework.data.repository.CrudRepository;
import pro.longhi.careers.model.Employee;

public interface EmployeeRepository extends CrudRepository<Employee, Long> {

    Employee findByLastName(String name);
}
