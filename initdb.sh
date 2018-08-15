#!/bin/sh

su - postgres

createdb graphql

psql -f /migrations/001-grants.sql graphql
psql -f /migrations/002-create-users-table.sql graphql
psql -f /migrations/003-create-questions-table.sql graphql
psql -f /migrations/004-create-comments-table.sql graphql
psql -f /migrations/005-create-questions-for-feed-view.sql graphql
