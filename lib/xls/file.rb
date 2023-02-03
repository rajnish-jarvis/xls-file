# frozen_string_literal: true

require_relative "file/version"

module Xls
    def self.generate_xls(data, headers)
      package = Axlsx::Package.new
      work_sheet = package.workbook.add_worksheet(name: 'work_book')
      work_sheet.add_row headers
      unless data.is_a? Array
        data = data.as_json
      end
      data.each do |row|
        formatted_row = formatted_excel_data(row)
        work_sheet.add_row formatted_row
      end
      filename = "xls-file-#{Date.today.strftime("%dth %b %Y")}"
      path = "tmp/#{filename}"
      package.use_shared_strings = true
      package.serialize(path)
      return path
    end
    def self.formatted_excel_data(row)
      row.collect{|k, v| [v]}.flatten!
    end
    def self.test
      puts "Cheers!! xls-file installed successfully"
    end
    class Error < StandardError; end
    # Your code goes here...
end
