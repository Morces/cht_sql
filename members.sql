create table members(
  id bigserial primary key,
  name varchar(500) not null,
  bio text,
  role_id bigint not null references roles(id) on delete cascade,
  specialization varchar(500),
  password varchar(500) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);