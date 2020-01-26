package pro.longhi.careers.bootstrap;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import pro.longhi.careers.model.Employee;
import pro.longhi.careers.repositories.EmployeeRepository;
import pro.longhi.careers.repositories.EmploymentRepository;

@Component
public class DevBootstrap implements ApplicationListener<ContextRefreshedEvent> {

    private EmployeeRepository employeeRepository;
    private EmploymentRepository employmentRepository;

    public DevBootstrap(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        initData();
    }

    private void initData(){

        Employee employee = new Employee();
        employee.setFirstName("Mario");
        employee.setLastName("Rossi");

        employeeRepository.save(employee);
    }
}
