require 'spec_helper'

RSpec.describe Animals::Bird do
  describe '#move' do
    it 'can fly' do
      expect(subject.move).to eql('I can fly')
    end
  end

  describe '#speak' do
    it 'can chirp' do
      expect(subject.speak).to eql('Chirp!')
    end
  end

  describe '.type?' do
    subject { described_class }

    birds = [ 'falcon', 'magpie', 'raven', 'eagle' ]

    birds.each do |bird|
      it "finds a #{bird}" do
        expect(subject.type?(bird)).to be true
      end
    end
  end
end
