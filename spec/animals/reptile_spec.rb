require 'spec_helper'

RSpec.describe Animals::Reptile do
  describe '#move' do
    it 'can walk' do
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

  describe '.type?' do
    subject { described_class }

    reptiles = [ :lizard, :alligator, :crocodile, :snake, :turtle, :tortoise ]
 
    reptiles.each do |reptile|
      it "finds a #{reptile}" do
        expect(subject.type?(reptile)).to be true
      end
    end
  end
end
