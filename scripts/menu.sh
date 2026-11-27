
#! /usr/bin/bash

# ==========================================
# Database Menu 
# ==========================================
database_menu(){
PS3="Enter your choice: "
select option in \
"Create Table" \
"List Table" \
"Drop Table" \
"Insert Into Table" \
"Update Table" \
"Delete from Table" \
"Select from Table" \
"Back to main menu"
do
case "$option" in
"Create Table") echo "Create table Coming soon";;
"List Table") echo "List Table Coming soon";;
"Drop Table") echo "Drop Table Coming soon";;
"Insert Into Table") echo "Insert Into Table Coming soon";;
"Update Table") echo "Update Table Coming soon";;
"Delete from Table") echo "Delete from Table Coming soon";;
"Select from Table") echo "Select from Table Coming soon";;
"Back to main menu")  break ;;
*) echo "invalid option";;
esac
done
}

