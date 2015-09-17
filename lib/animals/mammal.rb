module Animals
  class Mammal < Animals::Base
    def move
      'I can walk'
    end

    protected

    def self.types
      [
        :rodent,
        :insectivore,
        :rabbit,
        :hare,
        :carnivore,
        :bat,
        :perrisodactyla,
        :artiodactyla,
        :marsupial,
        :seal,
        :cetacea
      ]
    end
  end
end
