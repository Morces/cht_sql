create table roles(
  id bigserial primary key,
  name varchar(500) not null,
  description text,
  screen json,
  features json,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);