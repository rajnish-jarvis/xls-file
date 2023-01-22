# Xls::File

Generate XLS file with data and headers.

## Rails version required

Tested on Rails 5 and 6

## Description

No need to install other xls gem and don't write logic for that
## Installation
For now =>

1. Put gem 'xls-file', git: "https://github.com/rajnish-jarvis/xls-file" in your Gemfile.
2. bundle install
3. Confirm installation by calling Xls.test  you will get "Cheers!! xls-file installed successfully" if installation is done.

## Usage

Create headers

headers = ['Name', 'Phone Number', 'DOB', 'Location']

Create data

data = [{name: "Test1", phone: '999999999', dob: '15-Jan-1996'}, {name: "Test2", phone: '888888888', dob: '16-Jan-1996'}]

Note: => you can pass ActiveRecord_Relation objcts and array of object both it will convert in hash if objects is ActiveRecord_Relation.

file = Xls.generate_xls(data, headers).

It will return newly generated file path, now its depends on you download with helper method (send_file) on controller or upload on any cloud.

## Request from all
I am new in this and this Gem is in not fully completed yet still improving so any suggestions and contributions are most welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
