CREATE TABLE Client
    (
    Customer_ID number PRIMARY KEY, 
    Last_name VARCHAR2(200), 
    First_name VARCHAR2(100),
    Patronymic VARCHAR2(100),
    Date_of_Birth DATE,
    Telephone_number VARCHAR2(100),
    E_mail VARCHAR2(100)
    );
    
CREATE TABLE Salon_address
  (
   Address_ID number PRIMARY KEY,
   Country varchar2 (100),
   City varchar2 (100),
   Street varchar2 (200),
   House varchar2 (20),
   Structure varchar2 (20),
   Building varchar2 (20)
   );
   
   
CREATE TABLE Salon
 (
  Salon_ID number PRIMARY KEY,
  Name_ varchar2 (200),
  Working_hours varchar2 (200),
  Telephone_number varchar2 (100),
  Address_ID number,
  constraint salon_FK FOREIGN KEY (Address_ID)
       references Salon_address(Address_ID)
);
    
CREATE TABLE Employee
(
  Employee_ID number PRIMARY KEY,
  Last_name varchar2 (200),
  Firs_name varchar2(100),
  Patronymic_number varchar2 (100),
  Salon_ID number,
   constraint Emp_Salon_FK FOREIGN KEY (Salon_id)
       references Salon(Salon_id)
    );


CREATE TABLE Purchase_agreement
(
  Agreement_ID number PRIMARY KEY,
  Date_of_purchase date,
  Customer number,
  Seller number,
 constraint Emp_FK FOREIGN KEY ( Seller)
       references Employee(Employee_ID),
  constraint Client_FK FOREIGN KEY (Customer)
       references Client(Customer_ID)
);


CREATE TABLE Vehicle_characteristic
(
  Vehicle_ID number PRIMARY KEY,
  "Model" varchar2 (100),
  year_of_issue varchar2 (4),
  mileage varchar2(30),
  initial_cost number
);


CREATE TABLE Car
(
  Subject_of_agreement number PRIMARY KEY,
  Agreement_ID number,
  Vehicle_ID number,
  Amount number,
  Cost_per_piece number,
constraint car1_FK FOREIGN KEY (Agreement_ID)
       references Purchase_agreement(Agreement_ID),
  constraint car2_FK FOREIGN KEY (Vehicle_ID)
       references Vehicle_characteristic(Vehicle_ID)
);

















