require 'ultraquiz/version'
require 'ultraquiz/gems_client'
require 'csv'

module Ultraquiz
  class Ultraquiz
    def popular
      gems = GemsClient.new
      gems.search ''
    end

    def searchAll(query)
      gems = GemsClient.new
      matched = []
      page = 1
      while true
        response = gems.search(query, page)
        break if response.empty?
        page += 1
        matched += response
      end
      matched
    end

    def putsAsCsv(data)
      csv_string = CSV.generate do |csv|
        data.each do |row|
          csv << [
            row["name"],
            row["downloads"],
            row["version"],
            row["version_downloads"],
            row["authors"]
          ]
        end
      end
    end

  end
end
