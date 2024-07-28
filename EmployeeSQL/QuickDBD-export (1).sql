-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5bRt8s
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" char   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" char   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

