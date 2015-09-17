class Animal
  def self.generate animal_type
    case animal_type.to_sym
    when :salamander, :frog, :toad, :newt, :caecilian
      Animals::Amphibian.new name: animal_type.to_sym
    when :falcon, :magpie, :raven, :eagle
      Animals::Bird.new name: animal_type.to_sym
    when :salmon, :common_carpe, :neon_tetra, :goldfish
      Animals::Fish.new name: animal_type.to_sym
    when :insect, :crustacean, :mollusc, :echinoderm, :worm
      Animals::Invertibrate.new name: animal_type.to_sym
    when :rodent, :insectivore, :rabbit_and_hare, :carnivore, :bat, :perrisodactyla, :artiodactyla, :marsupial, :seal, :cetacea
      Animals::Mammal.new name: animal_type.to_sym
    when :lizard, :alligator, :crocodile, :snake, :turtle, :tortoise
      Animals::Reptile.new name: animal_type.to_sym
    else
      raise Animals::NotImplemented::AnimalGroup.new "animal type not found: #{animal_type}"
    end
  end
end
