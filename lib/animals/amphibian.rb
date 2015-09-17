module Animals
  class Amphibian < Animals::Base
    def move
      'I can swim'
    end

    def speak
      case type
      when :frog
        'Croak!'
      when :toad
        'Ribbit!'
      else
        super
      end
    end
  end
end
