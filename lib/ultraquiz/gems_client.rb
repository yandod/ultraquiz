require 'gems/client'

module Ultraquiz
  class GemsClient < Gems::Client
     def search(query)
       response = get("/api/v1/search.yaml", {:query => query})
       YAML.load(response)
       matched = []
       page = 1
       while true
         yaml_data = get(
           "/api/v1/search.yaml",
           {:query => query, :page => "#{page}"}
         )
         response = YAML.load(yaml_data)
         break if response.empty?
         page += 1
         matched += response
       end
       matched
    end
  end
end
