class Animal
  def self.generate animal_type
    if Animals::Amphibian.type?(animal_type)
      Animals::Amphibian.new name: animal_type.to_sym
    elsif Animals::Bird.type?(animal_type)
      Animals::Bird.new name: animal_type.to_sym
    elsif Animals::Fish.type?(animal_type)
      Animals::Fish.new name: animal_type.to_sym
    elsif Animals::Invertibrate.type?(animal_type)
      Animals::Invertibrate.new name: animal_type.to_sym
    elsif Animals::Mammal.type?(animal_type)
      Animals::Mammal.new name: animal_type.to_sym
    elsif Animals::Reptile.type?(animal_type)
      Animals::Reptile.new name: animal_type.to_sym
    else
      raise Animals::NotImplemented::AnimalGroup.new "animal type not found: #{animal_type}"
    end
  end
end
