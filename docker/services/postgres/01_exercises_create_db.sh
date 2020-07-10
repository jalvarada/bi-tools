#!/bin/bash
set -e # exit immediately if a command exits with a non-zero status.

POSTGRES="psql --username postgres"

# create database for pgexercises
echo "Creating database: exercises"
$POSTGRES <<-EOSQL
CREATE DATABASE exercises OWNER exercises;
EOSQL
