When(/^I open a pdf file$/) do
  # add the gem to gem file and then require it in env.rb
  dir_to_pdf = Dir.pwd + '/features/support/datafiles'
  @pdf_reader = PDF::Reader.new("#{dir_to_pdf}/AdobeXMLFormsSamples.pdf")
end

Then(/^I print the raw text$/) do
  puts "Reader version--> #{@pdf_reader.pdf_version}"
  puts "Reader info --> #{@pdf_reader.info}"
  puts "Meta data--> #{@pdf_reader.metadata}"
  puts "Page count --> #{@pdf_reader.page_count}"
end

When(/^I open a pdf file using open\-uri$/) do
  # require open-uri in env.rb
  io = open('http://partners.adobe.com/public/developer/en/xml/AdobeXMLFormsSamples.pdf')
  @pdf_reader = PDF::Reader.new(io)
end

Then(/^I print fonts and text by page$/) do
  @pdf_reader.pages.each do |page|
    puts page.fonts
    puts page.text
    puts page.raw_content
  end
end