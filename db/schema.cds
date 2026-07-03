using { cuid, managed } from '@sap/cds/common';

namespace employee.management;
@Capabilities.DeleteRestrictions.Deletable : false
@Search.searchable : true

entity Employee : cuid, managed {

   @title : 'Employee Name'
   @mandatory
   @Search.defaultSearchElement
   employeeName : String(100);

   @title : 'Email Address'
   email : String(100);

   @title : 'Salary'
   salary : Decimal(10,2);

   status : String default 'Pending';
}
