module Animals
  class Invertibrate < Animals::Base
    def move
      'I can move'
    end

    protected

    def self.types
      [
        :insect,
        :crustacean,
        :mollusc,
        :echinoderm,
        :worm,
      ]
    end
  end
end
