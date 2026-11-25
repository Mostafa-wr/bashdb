#! /usr/bin/bash
##absolute path of the project
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)" || exit 1

##load the config

source "$SCRIPT_DIR/config.sh" || exit 1

CURRENT_DB_NAME=""
##check if the database dir exists if not create it 
mkdir -p -- "$DB_ROOT" || exit 1

main_menu() {

     PS3="Enter your choice: "
    echo "================================"
    echo "          BASH RDBMS"
    echo "================================"

    select option in \
        "Create Database" \
        "List Databases" \
        "Connect to Database" \
        "Drop Database" \
        "Exit"
    do
        case "$option" in

            "Create Database")
                echo "Create Database - Coming Soon"
                ;;

            "List Databases")
                echo "List Databases - Coming Soon"
                ;;

            "Connect to Database")
                echo "Connect to Database - Coming Soon"
                ;;

            "Drop Database")
                echo "Drop Database - Coming Soon"
                ;;

            "Exit")
                echo "Goodbye!"
                break
                ;;

            *)
                echo "Invalid choice. Try again."
                ;;
        esac

        echo ""
    done
}
main_menu


