using { employee.management as db } from '../db/schema';

service EmployeeService {

    entity Employess as projection on db.Employee;

    annotate Employess with {

        employeeName @title : 'Employee Name';

        email @title : 'Email Address';

        salary @title : 'Monthly Salary';

    };

    action approveEmployee(ID : UUID) returns String;

    function calculateBonus(salary : Decimal(10,2))
        returns Decimal(10,2);

}