require 'active_support/inflector'

module Animals
  class Base
    attr_accessor :name, :type

    def initialize options = {}
      self.name = options[:name].to_s.humanize
      self.type = options[:name]
    end

    def speak
      raise NotImplemented::Speak
    end

    def move
      raise NotImplemented::Move
    end

    def self.type?(type)
      self.types.include?(type.to_sym)
    end

    protected

    def self.types
      raise NotImplemented::AnimalTypes
    end
  end
end
