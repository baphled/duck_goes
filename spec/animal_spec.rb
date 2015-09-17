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

    context 'an invertibrate' do
      invertibrates = [ 'insect', 'crustacean', 'mollusc', 'echinoderm', 'worm' ]

      invertibrates.each do |invertibrate|
        it "is a #{invertibrate}" do
          expect(subject.generate(invertibrate)).to be_an Animals::Invertibrate
        end
      end
    end

    context 'a mammal' do
      mammals = [ 'rodent', 'insectivore', 'rabbit_and_hare', 'carnivore', 'bat', 'perrisodactyla', 'artiodactyla', 'marsupial', 'seal', 'cetacea' ]

      mammals.each do |mammal|
        it "is a #{mammal}" do
          expect(subject.generate(mammal)).to be_an Animals::Mammal
        end
      end
    end

    context 'a reptile' do
      reptiles = [ 'lizard', 'alligator', 'crocodile', 'snake', 'turtle', 'tortoise' ]

      reptiles.each do |reptile|
        it "is a #{reptile}" do
          expect(subject.generate(reptile)).to be_an Animals::Reptile
        end
      end
    end
  end
end
