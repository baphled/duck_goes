module Animals
  class Amphibian < Animals::Base
    def move
      'I can swim'
    end

    def speak
      case name.downcase.to_sym
      when :frog
        'Croak!'
      when :toad
        'Ribbit!'
      else
        super
      end
    end

    protected

    def self.types
      [
        :salamander,
        :frog,
        :toad,
        :newt,
        :caecilian,
      ]
    end
  end
end
