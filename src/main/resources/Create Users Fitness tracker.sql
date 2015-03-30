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