-- vim:set ft=pgsql:

CREATE TABLE users
(
    id bigserial NOT NULL,
    name character varying,
    PRIMARY KEY (id)
);


insert into users ("name")
values ('ehren'), ('desmond'), ('ryan');

GRANT ALL PRIVILEGES ON users TO graphql;

