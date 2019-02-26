This example shows how to use composite value types as data members in objects
(including as object id members) and other value types, as element types in
containers, and as base types for other composite value types. It also shows
how to use composite value type data members in queries.

The example consists of the following files:

person.hxx
  Header file defining the 'basic_name', 'name_extras', 'name', and
  'email_address' composite value types. It also defines the 'phone_numbers'
  composite value type as an instantiation of the 'std::pair' class template
  Finally it defines the 'person' persistent class which uses 'email_address'
  as its object id as well as 'name' and 'phone_numbers' in its other data
  members.

person-odb.hxx
person-odb.ixx
person-odb.cxx
person.sql
  The first three files contain the database support code and the last file
  contains the database schema for the person.hxx header.

  These files are generated by the ODB compiler from person.hxx using the
  following command line:

  odb -d <database> --generate-schema --generate-query person.hxx

  Where <database> stands for the database system we are using, for example,
  'mysql'.

database.hxx
  Contains the create_database() function which instantiates the concrete
  database class corresponding to the database system we are using.

driver.cxx
  Driver for the example. It includes the person.hxx and person-odb.hxx
  headers to gain access to the persistent classes and their database support
  code. It also includes database.hxx for the create_database() function
  declaration.

  In main() the driver first calls create_database() to obtain the database
  instance. It then persists a 'person' object, loads it and updates its
  nickname and aliases which reside in a composite value type, then re-loads
  the object and prints its name to verify that the changes have been made
  persistent. Finally, the driver performs a database query which uses a
  data member from the composite value type in its criterion.

To compile and link the example manually from the command line we can use
the following commands (using  MySQL as an example; replace 'c++' with your
C++ compiler name):

c++ -c person-odb.cxx
c++ -DDATABASE_MYSQL -c driver.cxx
c++ -o driver driver.o person-odb.o -lodb-mysql -lodb

To run the example we may first need to create the database schema (for some
database systems, such as SQLite, the schema is embedded into the generated
code which makes this step unnecessary). Using MySQL as an example, this
can be achieved with the following command:

mysql --user=odb_test --database=odb_test < person.sql

Here we use 'odb_test' as the database login and also 'odb_test' as the
database name.

Once the database schema is ready, we can run the example (using MySQL as
the database):

./driver --user odb_test --database odb_test
# testodbcomposite
