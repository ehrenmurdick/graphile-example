-- vim:set ft=pgsql:

CREATE view feedQuestions as (
  select
    questions.*,
    count(comments.id) as comment_count
  from public.questions
  left outer join comments
  on comments.question_id = questions.id
  group by questions.id
);

GRANT ALL PRIVILEGES ON feedQuestions TO graphql;

