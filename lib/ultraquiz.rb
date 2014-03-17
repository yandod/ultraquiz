require 'ultraquiz/version'
require 'ultraquiz/gems_client'

module Ultraquiz
  class Ultraquiz
    def popular
      GemsClient.search ''
    end
  end
end
