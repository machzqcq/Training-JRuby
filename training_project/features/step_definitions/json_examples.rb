When(/^I parse a json string value$/) do
  json_string = '{"desc":{"someKey":"someValue","anotherKey":"value"},"main_item":{"stats":{"a":8,"b":12,"c":10}}}'
  @json_hash = JSON.parse(json_string)
end

When(/^I parse a json file$/) do
  dir_to_json = Dir.pwd + '/features/support/datafiles'
  @json_hash = JSON.parse(IO.read("#{dir_to_json}/json_data.json"))
end

Then(/^I print the keys values and access a key$/) do
  p "Printing the hash"
  p @json_hash
  p "Printing keys"
  p @json_hash.keys
  p "Printing values"
  p @json_hash.values

  p "Accessing some keys"
  p @json_hash["desc"]["someKey"]
  p @json_hash["main_item"]["stats"]["a"]
end

