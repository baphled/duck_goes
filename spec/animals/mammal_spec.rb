require 'spec_helper'

RSpec.describe Animals::Mammal do
  describe '#move' do
    it 'can move' do
      expect(subject.move).to eql('I can walk')
    end
  end

  describe '#speak' do
    it 'does not know how to speak' do
      expect {
        subject.speak
      }.to raise_error Animals::NotImplemented::Speak
    end
  end
end
