create table users(username varchar (50) not null primary key,
	password varchar (50) not null,
    enabled boolean null);
    
create table authorities (
	username varchar(50) not null,
    authority varchar (50) not null,
    constraint fk_authorities_users
    foreign key(username) references users(username));
    create unique index ix_auth_username on authorities
    (username,authority);
    
insert into users(username,password, enabled) values ("lucas","secret",true);

select * from users;

insert into authorities (username,authority) values ("lucas", "ROLE_USER");

select * from authorities;

insert into users(username,password, enabled) values ("boss","boss",true);
insert into authorities (username,authority) values ("boss", "ROLE_ADMIN");
insert into authorities (username,authority) values ("boss", "ROLE_USER");
select * from authorities;
delete from authorities where username="lucas" and authority="ROLE_ADMIN";

update users set password = "$2a$10$jKRrfKKIFbegDBoPghuqdui9qpNF6crNnTykL/KvC95oez8Ts2LL."
where username="boss";

update users set password = "boss"
where username="boss";

alter table users modify password varchar(60);
update users set password = "$2a$10$Eg.VWhTI8IHf9/X825072OI911t583xgGopvNfwL0ZzBJA41110R6"
where username="lucas";

insert users(username,password,enabled) values ("mark", "$2a$10$Eg.VWhTI8IHf9/X825072OI911t583xgGopvNfwL0ZzBJA41110R6",1);

insert into authorities(username,authority) values ("mark","ROLE_BAD");

create table permissions (
	username varchar(50) not null,
    target varchar(50) not null,
    permsission varchar(50) not null,
    constraint fk_permissions_users foreign key(username) references users(username));
    
ALTER TABLE permissions
  change permsission permission varchar(50) not null;
    
create unique index ix_perm_username on permissions (username,target,permission);
insert into permissions (username,target,permission)
	values("boss","com.pluralsight.model.Goal","createGoal");
