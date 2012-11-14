module Rsvn
  class Tag
    attr_reader :base_url, :name 

    def initialize(name, base_url)
      @name = name
      @base_url
    end

    def url
      "#{@base_url}/tags/#{@name}"
    end
  end
end
