-- Check if a database name is provided as an argument
IF [ $# -eq 0 ]; THEN
    echo "Usage: $0 <database_name>"
    exit 1
fi

-- Get the database name from the command-line argument
database_name="$1"

-- MySQL command to create the 'first_table' if it doesn't exist
mysql -u your_username -p "$database_name" -e "
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);
"