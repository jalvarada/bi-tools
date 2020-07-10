#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a shared role to read & write general datasets into postgres
echo "Creating database role: exercises"
$POSTGRES <<-EOSQL
CREATE USER exercises WITH
    LOGIN
    SUPERUSER
    CREATEDB
    CREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$EXERCISES_PASSWORD';
EOSQL
