require 'active_support/inflector'

module Animals
  class Base
    attr_accessor :name

    def initialize options = {}
      self.name = options[:name].to_s.humanize
    end

    def speak
      raise NotImplemented::Speak
    end

    def move
      raise NotImplemented::Move
    end
  end
end
