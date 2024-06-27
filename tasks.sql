create table task_status(
  id serial primary key,
  name varchar(500) not null,
  description text
 
);

create table tasks(
  id bigserial primary key,
  name varchar(500) not null,
  description text,
  allocated_to bigint references members(id) on delete set null,
  allocated_by bigint references members(id) on delete set null,
  allocation_period_from timestamp default current_timestamp,
  allocation_period_to timestamp,
  allocation_area varchar(500),
  task_status_id int references task_status(id) on delete set null, 
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);