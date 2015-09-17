require 'spec_helper'

RSpec.describe Animal do
  subject { described_class }

  describe '#generate' do
    context 'an amphibian' do
      amphibians = [ 'salamander', 'frog', 'toad', 'newt', 'caecilian' ]

      amphibians.each do |amphibian|
        it "is a #{amphibian}" do
          expect(subject.generate(amphibian)).to be_an Animals::Amphibian
        end
      end

      context 'frog' do
        let(:frog) { subject.generate(:frog) }

        it 'has the name' do
          expect(frog.name).to eql('Frog')
        end

        it 'can swim' do
          expect(frog.move).to eql('I can swim')
        end

        it 'can croaks' do
          expect(frog.speak).to eql('Croak!')
        end
      end

      context 'toad' do
        let(:toad) { subject.generate(:toad) }

        it 'can ribbit' do
          expect(toad.speak).to eql('Ribbit!')
        end
      end
    end

    context 'a bird' do
      birds = [ 'falcon', 'magpie', 'raven', 'eagle' ]

      birds.each do |bird|
        it "is a #{bird}" do
          expect(subject.generate(bird)).to be_an Animals::Bird
        end
      end
    end

    context 'a fish' do

      fishes = [ 'salmon', 'common_carpe', 'neon_tetra', 'goldfish' ]

      fishes.each do |fish|
        it "is a #{fish}" do
          expect(subject.generate(fish)).to be_an Animals::Fish
        end
      end
    end
    it 'can generate an invertibrate'
    it 'can generate a mammal'
    it 'can generate a reptile'
  end
end
