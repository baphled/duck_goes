class Animal
  def self.generate animal_type
    case animal_type.to_sym
    when :salamander, :frog, :toad, :newt, :caecilian
      Animals::Amphibian.new name: animal_type.to_sym
    when :falcon, :magpie, :raven, :eagle
      Animals::Bird.new name: animal_type.to_sym
    end
  end
end
