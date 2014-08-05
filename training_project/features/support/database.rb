# require "jdbc/mysql"
# require "java"
#
# # Prep the connection
# Java::com.mysql.jdbc.Driver
# @jdbc_wordpress_url = "jdbc:mysql://localhost:3306/cucumber"

# Oracle connection string
# Install 'activerecord-jdbc-adapter' and "activerecord-oracle_enhanced-adapter", place the oracle client jar file in classpath
# typically in jruby/lib
# http://stackoverflow.com/questions/755207/how-to-connect-to-oracle-using-jruby-jdbc

# full information : https://github.com/jruby/activerecord-jdbc-adapter
# Connecting to DB2 using jruby is also simple
# Get the db2 jar and put it in jruby/lib directory
#
# ActiveRecord::Base.establish_connection(
#     :adapter => "jdbc",
#     :driver => "com.ibm.db2.jcc.DB2Driver",
#     :url => "jdbc::db2://<url>:<port>/<instance>",
#     :username => "<username",
#     :password => "<password",
#     :schema => "<schema"
#
# )

# Then create ruby classes for corresponding table names. From here active record behaves
# the same way as code that runs behind sqlite3_database.feature