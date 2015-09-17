class Animal
  def self.generate animal_type
    case animal_type.to_sym
    when :salamander, :frog, :toad
      Animals::Amphibian.new name: animal_type.to_sym
    end
  end
end
