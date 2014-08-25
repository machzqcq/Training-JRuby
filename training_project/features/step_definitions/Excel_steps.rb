#http://rubydoc.info/gems/rubyXL/3.2.2/frames

When(/^I read the excel file "([^"]*)"$/) do |arg|
  dir_to_pdf = Dir.pwd + '/features/support/datafiles'
  @read_workbook = RubyXL::Parser.parse("#{dir_to_pdf}/#{arg}")
end

Then(/^I print the values of excel$/) do
  sheet1 = @read_workbook[0]
  sheet1_data = sheet1.extract_data
  puts "Sheet 1 data:"
  puts sheet1_data
  row1_data = sheet1_data[0]
  puts "Row 1 data"
  puts row1_data
  cell_a1=sheet1_data[0][0]
  puts "Cell A1:"
  puts cell_a1
  table = sheet1.get_table(["id","firstname","lastname","Address","Email"])
  puts "Table hash"
  puts table

end