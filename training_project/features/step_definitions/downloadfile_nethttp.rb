When(/^I open yahoo messenger website$/) do
  @browser.navigate.to "http://messenger.yahoo.com"
end

And(/^I get the download link to download$/) do
  @download_source = @browser.find_element(:id => 'messenger-download').attribute('href')
  puts "download location --> #{@download_source}"
  uri = URI(@download_source)
  host = uri.host
  path = uri.path

  puts "Host --> #{host}"
  puts "Path --> #{path}"

  Net::HTTP.start(host) do |http|
    resp = http.get(path)
    open("msgr11us.exe", "wb") do |file|
      file.write(resp.body)
    end
  end

end

Then(/^I verify if the download file is downloaded$/) do
  unless File.exist?("msgr11us.exe")
    puts "Error downloading"
  else
    puts "Successfully downloaded"
   end
end

And(/^delete the file$/) do
  puts "Deleting the file now...."
  File.delete("msgr11us.exe")
end