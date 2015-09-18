require 'active_support/inflector'

class Animal
  def self.generate animal_type
    raise Animals::NotImplemented::AnimalGroup.new("animal type not found: #{animal_type}") unless names.include?(animal_type.to_sym)

    animal = find_animal(animal_type)
    constant = "Animals::#{animal.to_s.camelcase}".constantize
    constant.new(name: animal_type)
  end

  def self.groups
    [
      :amphibian,
      :bird,
      :fish,
      :invertibrate,
      :mammal,
      :reptile
    ]
  end

  def self.names
    groups.collect do |animal|
      "Animals::#{animal.to_s.camelcase}".constantize.types
    end.flatten.sort
  end

  def self.find_animal(animal_type)
    groups.select do |animal_group|
      constant = "Animals::#{animal_group.to_s.camelcase}".constantize
      constant.type?(animal_type)
    end.first
  end
end
