package pro.longhi.careers.repositories;


import org.springframework.data.repository.CrudRepository;
import pro.longhi.careers.model.Employment;

public interface EmploymentRepository extends CrudRepository<Employment, Long> {
}
