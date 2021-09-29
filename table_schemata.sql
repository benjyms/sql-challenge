-- create department table
DROP TABLE IF EXISTS "departments"

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

select * from departments

-- create employee detpartment table
DROP TABLE IF EXISTS dept_emp

CREATE TABLE dept_emp (
	"emp_no" int   NOT NULL,
    "dept_no" varchar  NOT NULL
	--"ID" Serial   NOT NULL
	-- CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        --"ID"
   
);

select * from dept_emp

-- create te deptartment manager table
DROP TABLE IF EXISTS dept_manager

CREATE TABLE "dept_manager" (
    --"ID" Serial   NOT NULL,
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
    --CONSTRAINT "pk_dept_manager" PRIMARY KEY (
       --"ID"
    -- )
);

select * from dept_manager

-- create the employee titles table
DROP TABLE IF EXISTS titles

CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    --CONSTRAINT "pk_titles" PRIMARY KEY (
    --    "title_id"
    -- )
);

select * from titles

-- create the employees table
DROP TABLE IF EXISTS employees

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date  NOT NULL
    --CONSTRAINT "pk_employees" PRIMARY KEY (
      --  "emp_no"
    -- )
);

select * from employees
-- create the employee salaries table
DROP TABLE IF EXISTS salaries

CREATE TABLE "salaries" (
   -- "ID" Serial   NOT NULL,
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL
    --CONSTRAINT "pk_salaries" PRIMARY KEY (
      --  "ID"
    -- )
);


ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");




	