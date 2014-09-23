require 'rspec'
require 'uri'
require 'yaml'
require 'json'
require 'nokogiri'
require 'open-uri'
require 'pdf/reader'
require_relative 'wrapper'
require 'rspec/expectations'
require 'browsermob/proxy'
require 'java'
require './features/support/java_libraries/gson-2.2.4.jar'
require 'active_record'
# https://github.com/jruby/activerecord-jdbc-adapter
require 'activerecord-jdbc-adapter' if defined? JRUBY_VERSION
require 'activerecord-jdbcmysql-adapter' if defined? JRUBY_VERSION
require 'activerecord-jdbcsqlite3-adapter' if defined? JRUBY_VERSION

# for sqlite3
require 'jdbc/sqlite3'

#for rubyXL
require 'rubyXL'




