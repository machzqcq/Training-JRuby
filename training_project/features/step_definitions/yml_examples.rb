When(/^I open a yml file$/) do
  dir_to_yml = Dir.pwd + '/features/support/datafiles'
  @yml_hash = YAML.load_file("#{dir_to_yml}/data.yml")
end

Then(/^I print the hash$/) do
  p "Printing yml hash...."
  p @yml_hash
end

Then(/^I print the keys and values$/) do
  p "Hash keys:"
  p @yml_hash.keys
  p "Hash Values:"
  p @yml_hash.values
end

Then(/^I print keys values using ruby enumerations$/) do
  p "Printing keys and values"
  @yml_hash.each do |key,value|
    p key + ":"+value
  end
end