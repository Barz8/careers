create table employee (id bigint not null, first_name varchar(255), last_name varchar(255), primary key (id)) engine=InnoDB
create table employee_employments (employee_id bigint not null, employments_id bigint not null, primary key (employee_id, employments_id)) engine=InnoDB
create table employment (id bigint not null, from_date datetime, job varchar(255), to_date datetime, employee_id bigint, primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
alter table employee_employments add constraint UK_a31irx29thdnmh818iwmqb0gt unique (employments_id)
alter table employee_employments add constraint FKklhoo9xs2ux6fg91gf5vpxqms foreign key (employments_id) references employment (id)
alter table employee_employments add constraint FKnydsh41dx33m12a26fpq4ijhu foreign key (employee_id) references employee (id)
alter table employment add constraint FKe4av0khvk9h1ixjrt9i3un3my foreign key (employee_id) references employee (id)
create table employee (id bigint not null, first_name varchar(255), last_name varchar(255), primary key (id)) engine=InnoDB
create table employee_employments (employee_id bigint not null, employments_id bigint not null, primary key (employee_id, employments_id)) engine=InnoDB
create table employment (id bigint not null, from_date datetime, job varchar(255), to_date datetime, employee_id bigint, primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
alter table employee_employments add constraint UK_a31irx29thdnmh818iwmqb0gt unique (employments_id)
alter table employee_employments add constraint FKklhoo9xs2ux6fg91gf5vpxqms foreign key (employments_id) references employment (id)
alter table employee_employments add constraint FKnydsh41dx33m12a26fpq4ijhu foreign key (employee_id) references employee (id)
alter table employment add constraint FKe4av0khvk9h1ixjrt9i3un3my foreign key (employee_id) references employee (id)
