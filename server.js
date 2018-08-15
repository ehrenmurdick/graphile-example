const http = require("http");
const { postgraphile } = require("postgraphile");

const DOCKER_PSQL_URL = "postgres://graphql:graphql@postgres/graphql";

http
  .createServer(
    postgraphile(process.env.DATABASE_URL || DOCKER_PSQL_URL, 'public', {
      pgSettings: req => ({
        'user.id': `${req.headers['x-user-id']}`,
      }),
    }))
  .listen(process.env.PORT || 5000);
