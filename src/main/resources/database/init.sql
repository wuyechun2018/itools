create table T_USER
(
  id          VARCHAR2(32) not null,
  name        VARCHAR2(100),
  password    VARCHAR2(100),
  create_date DATE
)

alter table T_USER
add constraint T_USER primary key (ID)