
#!/bin/bash

# ==========================================
# RDBMS - DATABASE OPERATIONS
# ==========================================

# Create a new database directory.
# Arguments: $1 = database name
create_db() {
local db_name="$1"
if [[ ! "$db_name" =~ $IDENTIFIER_REGEX ]]
then
echo "invalid Data Base name"
return 1
fi

if [[ -e "$DB_ROOT/$db_name" ]]
then
echo "data base already exists"
return 1
fi

if mkdir "$DB_ROOT/$db_name"
then
echo "database '$db_name' created succesfully"
return 0
else
echo "Failed to create database"
return 1
fi
    
}

# List all existing databases.
# Arguments: None
list_dbs() {
    if [[ -z "$(ls -A "$DB_ROOT")" ]]
    then
    echo "no databases are found"
    else
    echo "the available databases are"
    ls -1 $DB_ROOT
    fi
}

# Connect to an existing database.
# Arguments: $1 = database name
# Updates CURRENT_DB_NAME on success.
connect_db() {
    :
}

# Delete an existing database directory.
# Arguments: $1 = database name
drop_db() {
    :
}

