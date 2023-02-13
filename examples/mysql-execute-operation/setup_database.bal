import ballerina/sql;
import ballerinax/mysql;
import ballerinax/mysql.driver as _;

// Initializes the database as a prerequisite to `Database Access` samples.
public function main() returns sql:Error? {
    mysql:Client mysqlClient = check new (host = "localhost", port = 3306, user = "root",
                                          password = "1qaz2wsx@");

    // Creates a database.
   // _ = check mysqlClient->execute(`CREATE DATABASE MARKS_STORE;`);

    // Creates `albums` table in the database.
	
	//_ = check mysqlClient->execute(`DROP MARKS_STORE.STUD_MARKS_STORE;`);
	
    _ = check mysqlClient->execute(`CREATE TABLE MARKS_STORE.STUD_MARKS_STORE (
                                        stud_id VARCHAR(10),
                                        stud_name VARCHAR(50),
                                        stud_marks REAL
                                    );`);

    check mysqlClient.close();
}
