create table titles(
	title_id varchar Primary Key not null,
	title varchar not null
);
create table employees(
	emp_no int primary key not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar(1) not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles (title_id)
);
create table salaries(
	emp_no int primary key not null,
	salary int not null,
	foreign key (emp_no) references employees (emp_no)
);	
create table departments(
	dept_no varchar primary key not null, 
	dept_name varchar not null
);

create table dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null ,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);



