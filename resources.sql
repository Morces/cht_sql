create table resources(
  id bigserial primary key,
  name varchar(500),
  description text,
  url varchar(500),
 resource_type varchar(500) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);

