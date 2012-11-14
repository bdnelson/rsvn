module Rsvn
  module Config
    @authentication_method = :anonymous
    @username = nil
    @password = nil

    def self.authentication_method
      @authentication_method
    end

    def self.authentication_method=(m)
      @authentication_method = m
    end

    def self.username
      @username
    end

    def self.username=(u)
      @username = u
    end

    def self.password
      @password
    end
    
    def self.password=(p)
      @password = p
    end
  end
end
