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

        it 'croaks'
      end
    end

    it 'can generate a bird'
    it 'can generate a fish'
    it 'can generate an invertibrate'
    it 'can generate a mammal'
    it 'can generate a reptile'
  end
end
