module Animals
  class Bird < Animals::Base
    def move
      'I can fly'
    end

    def speak
      'Chirp!'
    end

    protected

    def self.types
      [
        :falcon,
        :magpie,
        :raven,
        :eagle,
        :duck,
      ]
    end
  end
end
