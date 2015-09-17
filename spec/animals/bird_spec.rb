require 'spec_helper'

RSpec.describe Animals::Bird do
  describe '#move' do
    it 'can fly' do
      expect(subject.move).to eql('It can fly')
    end
  end

  describe '#speak' do
    it 'can chirp' do
      expect(subject.speak).to eql('Chirp!')
    end
  end
end
