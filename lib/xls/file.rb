# frozen_string_literal: true

require_relative "file/version"
require 'caxlsx'
module Xls
    def self.generate_xls
      package = Axlsx::Package.new
      work_sheet = package.workbook.add_worksheet(name: 'work_book')
      headers = ["Name", "Phone Number"]
      data = [{name: 'Rajnish Mishra', phone: "7979097455"}]
      work_sheet.add_row headers
      data.each do |row|
        formatted_row = formatted_excel_data(row)
        work_sheet.add_row formatted_row
      end
      filename = "Test- #{Date.today.strftime("%dth %b %Y")}"
      path = "tmp/#{filename}"
      package.use_shared_strings = true
      package.serialize(path)
      return path
    end
    def self.formatted_excel_data(row)
      [
        row[:name],
        row[:phone]
      ]
    end
    def self.call(name)
      puts "Hello, #{name}! I'm Ruby!"
    end
    class Error < StandardError; end
    # Your code goes here...
end
