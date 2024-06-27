create table visit_type(
  id bigserial primary key,
  name varchar(500) not null,
  description text
);

create table visits(
  id bigserial primary key,
  task_id bigint not null references tasks(id) on delete cascade,
  visit_type_id int not null references visit_type(id) on delete cascade,
  patient_record_id bigint references patient_records(id) on delete set null,
  comment text,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);