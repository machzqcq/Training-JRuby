# require java is added to env.rb or you can add it at the top of this file
When(/^I import java lang system and print version$/) do
  java_import java.lang.System
  version = System.getProperties["java.runtime.version"]
  puts "Java version: #{version}"
end

And(/^I launch browser and print the title$/) do
  @browser.navigate.to "http://www.google.com"
  puts "Browser title: #{@browser.title}"
end

When(/^I import gson library$/) do
  # require "./jarfile" in env.rb
  puts "importing gson and java system libraries..."
  java_import com.google.gson.Gson
  java_import com.google.gson.GsonBuilder
  java_import java.lang.System
  puts "java libraries imported successfully"
end

Then(/^I use it and perform a primitive operation on gson$/) do
  # gson = com.google.gson.Gson.new;
  # puts gson.toJson(1) ;
  puts "Executing Java code"
  gson = com.google.gson.GsonBuilder.new.create();
  gson.toJson("Hello", System.out);
  gson.toJson(123, System.out);
  puts "Successfully executed Java Code"
end

And(/^again perform some ruby operations$/) do
  puts "Executing ruby code now...isn't that neat?"
end