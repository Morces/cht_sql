-- create table households(
--   id bigserial primary key,
--   household_head_name varchar(500) not null,
--   description text,
--   location varchar(500),
--   total_members int,
--   created_at timestamp default current_timestamp,
--   updated_at timestamp default current_timestamp
-- );


-- create table househole_members(
--   id bigserial primary key,
--   household_id bigint not null references households(id) on delete cascade,
--   name varchar(500) not null,
--   age int,
--   relationship varchar(500),
--   created_at timestamp default current_timestamp,
--   updated_at timestamp default current_timestamp
-- );


create table patient_records(
  id bigserial primary key,
  househole_member_id bigint not null references househole_members(id) on delete cascade,
  vitals json,
  diagnosis json,
  allergies json,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);
