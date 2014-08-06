Training
========

I am using this project to help the community understand selenium webdriver with jruby
and the whole world of ruby gems (the same project works with MRI ruby too). I wil keep adding documentation as much as possible
however if you stumble across the code and want to know more, please email me: pradeep@seleniumframework.com
This project can be used by technical coaches for large and small companies to teach and also have
implementation code that proves Test Automation should be encouraged as much as possible

There are multiple websites and files/resources used in this project based on scenario


Capabilities offered

1) BDD/ATDD: Test Automate Everything

2) Thin client i.e. Browser (chrome, firefox, internet explorer, opera, safari)

3) XML/YML/HTML/JSON/CSV/EXCEL/CUSTOM FORMATS

4) Database connectivity

5) Web Services connectivity

6) Reduce manual activity as much as possible and let the machines do the redundant work

Pre-Requisites
===============
1) Install firefox ( >25) and chrome (>30) and IE (>8)
2) Download chromedriver.exe and IEDriverServer.exe and place in PATH
3) System should have Java JDK 1.7 or higher and JAVA_HOME defined
4) Install JRuby (http://jruby.org/) based on your platform type

Index
===============
Selenium first example

Checkbox and Select box example (by text and by value)

ScenarioOutlineExample

Selenium find element strategies (Retrieve child elements)

Selenium find element using multiple locators

Selenium find element by chaining find_element

yml examples

json examples

Disablechrome35warning

Ruby Enumerables

Cucumber Tags

Cucumber Transformations

Page-object design pattern

Java Script examples (Ajax handling)

Nokogiri Examples

Run scenarios headless using phantomjs[TODO]

Database connectivity using Active Record and/or traditional sql

Thick client connectivity (http://rubygems.org/gems/te3270-jruby)

Calling REST API [TODO]

Calling SOAP API[TODO]

Mixing Java Code with Ruby code

Convert pdf to text

Read and write Excel files [TODO]

Extend Selenium AbstractEventListener and customize

Known Issues
=====================
Hooks.rb code launches browser even for non-browser scenarios, however it closes it down too


Instructions to use
=====================

1) Checkout the project, cd into training_project
2) Run bundle install
3) Go through .feature files


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request