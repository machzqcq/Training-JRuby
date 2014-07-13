# Nokogiri reference: http://nokogiri.org/
# require open-uri in env.rb and openuri gem in Gemfile

When(/^I open google search with "([^"]*)"$/) do |arg|
  @browser.navigate.to arg
  @nokogiri_doc = Nokogiri::HTML(@browser.page_source)
end

Then(/^I print all the link content using css$/) do
  @nokogiri_doc.css('h3.r a').each do |link|
    puts link.content
  end
end


When(/^I open google search with openuri "([^"]*)"$/) do |arg|
  @nokogiri_doc = Nokogiri::HTML(open(arg))
end

Then(/^I print all the link content using xpath$/) do
  @nokogiri_doc.xpath('//h3/a').each do |link|
    puts link.content
  end
end

Then(/^I print all the link content using mix match$/) do
  @nokogiri_doc.search('h3.r a.l', '//h3/a').each do |link|
    puts link.content
  end
end

When(/^I open google search behind firewall "([^"]*)"$/) do |arg|
  #  if you are inside a corporate newtwork and accessing ssl websites
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  @browser.navigate.to arg
  @nokogiri_doc = Nokogiri::HTML(@browser.page_source)
end

When(/^I use nokogiri builder to build an xml$/) do
  # The id_ is used to disambiguate ruby methods with tag names
  @xml_builder = Nokogiri::XML::Builder.new do |xml|
    xml.root {
      xml.products {
        xml.widget {
          xml.id_ "10"
          xml.name "Awesome widget"
        }
      }
    }
  end
end

Then(/^I print the build xml$/) do
  puts @xml_builder.to_xml
end

When(/^I use nokogiri builder to build an xml with underscores$/) do
  @objects = [Object.new, Object.new, Object.new]

  @underscore_builder = Nokogiri::XML::Builder.new do |xml|
    xml.root {
      xml.objects {
        @objects.each do |o|
          xml.object {
            xml.type_   [1,2,3].sample
            xml.class_  o.class.name
            xml.id_     [4,5,6].sample
          }
        end
      }
    }
  end
end



Then(/^I print the build xml that has underscore to disambiguate from ruby methods$/) do
  puts @underscore_builder.to_xml
end

When(/^I use nokogiri builder to build an xml with tag attributes$/) do
  @objects = [Object.new, Object.new, Object.new]

  @underscore_builder = Nokogiri::XML::Builder.new do |xml|
    xml.root {
      xml.objects {
        @objects.each do |o|
          xml.object(:type => [1,2,3].sample, :class => o.class, :id => [4,5,6].sample)
        end
      }
    }
  end
end