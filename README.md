# Xls::File

Generate XLS file with data and headers.

## Rails version required

Tested on Rails 5 and 6

## Description

I am using famous 'caxlsx' to generate xls file, so basically my gem saves the time and line of code for other logic like row and col etc.

## Installation
For now =>

1. Put gem 'caxlsx' and  gem 'xls-file', git: "https://github.com/rajnish-jarvis/xls-file" in your Gemfile.
2. bundle install
3. Confirm installation by calling Xls.test  you will get "Cheers!! xls-file installed successfully" if installation is done.

## Usage

Create headers

headers = ['Name', 'Phone Number', 'DOB', 'Location']

Create data

data = [{name: "Test1", phone: '999999999', dob: '15-Jan-1996'}, {name: "Test2", phone: '888888888', dob: '16-Jan-1996'}]

Note: => You can pass ActiveRecord_Relation objects and array of object both it will convert in array of objects if objects is ActiveRecord_Relation.

file = Xls.generate_xls(data, headers).

It will return newly generated file path, now its depends on you download with helper method (send_file) on controller or upload on any cloud.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
