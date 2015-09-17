module Animals
  class Bird < Animals::Base
    def move
      'I can fly'
    end

    def speak
      'Chirp!'
    end
  end
end
