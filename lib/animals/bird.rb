module Animals
  class Bird < Animals::Base
    def move
      'It can fly'
    end

    def speak
      'Chirp!'
    end
  end
end
