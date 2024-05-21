CREATE TABLE EMPLOYEE (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Phone_Number VARCHAR(20),
    Department VARCHAR(75)
);

CREATE TABLE INVENTORY_LAPTOP (
    Inventory_Tag_Num INT PRIMARY KEY,
    Serial_Number VARCHAR(45),
    Manufacturer VARCHAR(75),
    Model VARCHAR(75),
    OS_Version VARCHAR(50),
    Hardware_Procurement_Date DATETIME,
    Memory_Size INT,
    Hard_Drive INT,
    Display INT
);

CREATE TABLE SOFTWARE (
    Software_Inventory_Number INT PRIMARY KEY,
    Software_Name VARCHAR(75),
    Version VARCHAR(50),
    Vendor VARCHAR(75),
    Software_Procurement_Date DATETIME,
    Cost DECIMAL(10, 2)
);

CREATE TABLE SOFTWARE_TRACKER (
    Inventory_Tag_Num INT,
    Software_Inventory_Number INT,
    FOREIGN KEY (Inventory_Tag_Num) REFERENCES INVENTORY_LAPTOP(Inventory_Tag_Num),
    FOREIGN KEY (Software_Inventory_Number) REFERENCES SOFTWARE(Software_Inventory_Number)
);

CREATE TABLE ASSIGNED_EMPLOYEE_INVENTORY (
    Employee_ID INT,
    Inventory_Tag_Num INT,
    Location VARCHAR(75),
    FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID),
    FOREIGN KEY (Inventory_Tag_Num) REFERENCES INVENTORY_LAPTOP(Inventory_Tag_Num)
);

SHOW Tables; 
