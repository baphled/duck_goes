module Animals
  class Reptile < Animals::Base
    def move
      'I can walk'
    end

    protected

    def self.types
      [
        :lizard,
        :alligator,
        :crocodile,
        :snake,
        :turtle,
        :tortoise
      ]
    end
  end
end
