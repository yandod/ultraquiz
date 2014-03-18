require 'gems'
require 'gems/client'

module Ultraquiz
  class GemsClient < Gems::Client
     def search(query, page = 1)
       yaml_data = get(
         "/api/v1/search.yaml",
         {:query => query, :page => "#{page}"}
       )
       response = YAML.load(yaml_data)
    end
  end
end
