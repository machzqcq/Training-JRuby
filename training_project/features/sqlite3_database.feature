# We use development.sqlite3 file in support/database folder. Any changes done are local only
  # For the .sqlite3, the table adoption has id, puppy_id,cart_id...column values.
@database
Feature: Connect to sqlite3 db
  @sqlite3
  Scenario: Create in memory table and print some values by querying
    When I create two tables "albums" and "tracks" using sqlite3 adapter
    Then I query some columns from the table and print to console

  @sqlite3 @activerecord
  Scenario: Connect to development.sqlite3 file and print table values using activerecord
    When I connect to development sqlite3 database
    Then I print the rows in adoptions table

  @sqlite3 @activerecord
  Scenario: Connect to development.sqlite3 file and print table values using activerecord and columns
    When I connect to development sqlite3 database
    Then I print the rows in adoptions table using columns

  @sqlite3 @activerecord
  Scenario: Connect to development.sqlite3 file and find a row by finding through a column value (where clause)
    When I connect to development sqlite3 database
    Then I print the row that has id "1"

  @sqlite3 @activerecord
  Scenario: Connect to development.sqlite3 file and update a row value
    When I connect to development sqlite3 database
    Then I update the puppy id for the row whose id is "1" and reset it back


  @sqlite3 @traditional_sql
  Scenario: Connect to development.sqlite3 file and print table values using sql
    When I connect to development sqlite3 database
    Then I print the rows in adoptions table executing sql

  @sqlite3 @traditional_sql
  Scenario: Connect to development.sqlite3 file and print id,puppy_id, cart_id from adoptions table
    When I connect to development sqlite3 database
    Then I print row values using columns "id", "puppy_id","cart_id"