#!/bin/bash

# python3 manage.py collectstatic --no-input

function POSTGRESQL() {
    systemctl restart postgresql
    echo "----------------- PostgreSQL Starting Finished. -----------------"
    echo "                               "
}
function FLAKE() {
    flake8 .
    echo "----------------- Flake8 Finished. -----------------"
    echo "                               "
}
function MAKEMIGRATIONS() {
    python3 manage.py makemigrations
    echo "----------------- Makemigrations Models Finished. -----------------"
    echo "                               "
}
function MIGRATE() {
    python3 manage.py migrate
    echo "----------------- Migrated Models Finished. -----------------"
    echo "                               "
}
function RUNSERVER() {
    python3 manage.py runserver 127.0.0.1:16000
    echo "----------------- Server Started Now. -----------------"
}
function SAASJOURNAL() {
	POSTGRESQL
    FLAKE
    MAKEMIGRATIONS
    MIGRATE
    RUNSERVER
}
SAASJOURNAL