module Animals
  class Fish < Animals::Base
    def move
      'I can swim'
    end

    protected

    def self.types
      [
        :salmon,
        :common_carpe,
        :neon_tetra,
        :goldfish,
      ]
    end
  end
end
