module Animals
  class Base
    def speak
      raise NotImplemented::Speak
    end

    def move
      raise NotImplemented::Move
    end
  end
end
