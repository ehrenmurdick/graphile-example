-- vim:set ft=pgsql:

CREATE TABLE questions
(
    id bigserial NOT NULL,
    user_id bigint default current_setting('user.id')::int references users(id),
    body character varying,
    PRIMARY KEY (id)
);

insert into questions ("user_id", "body")
values
  (1, 'what is your favorite color?'),
  (2, 'what is the average velocity of an unladen swallow?'),
  (3, 'what is the third question from this reference?');


GRANT ALL PRIVILEGES ON questions TO graphql;
grant all PRIVILEGES on questions_id_seq to graphql;

