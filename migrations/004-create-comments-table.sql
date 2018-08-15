-- vim:set ft=pgsql:

CREATE TABLE comments
(
    id bigserial NOT NULL,
    user_id bigint default current_setting('user.id')::int references users(id),
    question_id bigint references questions(id),
    body character varying,
    PRIMARY KEY (id)
);

insert into comments ("user_id", "question_id", "body")
values (1, 1, 'my favorite color is yellow');


GRANT ALL PRIVILEGES ON comments TO graphql;
grant all PRIVILEGES on comments_id_seq to graphql;

