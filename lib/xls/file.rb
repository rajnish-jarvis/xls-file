# frozen_string_literal: true

require_relative "file/version"
require 'axlsx'
require 'csv'
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
    def self.generate_csv(data, headers)
      filename = "csv-file-#{Date.today.strftime('%dth %b %Y')}.csv"
      path = "tmp/#{filename}"

      CSV.open(path, "w", write_headers: true, headers: headers) do |csv|
        unless data.is_a? Array
          data = data.as_json
        end

        data.each do |row|
          formatted_row = formatted_csv_data(row)
          csv << formatted_row
        end
      end

      return path
    end

    def self.formatted_csv_data(row)
      row.collect { |k, v| v }
    end
    def self.test
      puts "Cheers!! xls-file installed successfully"
    end
    class Error < StandardError; end
    # Your code goes here...
end
