require 'spec_helper'

RSpec.describe Animals::Fish do
  describe '#move' do
    it 'can swim' do
      expect(subject.move).to eql('I can swim')
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

    fishes = [ :salmon, :common_carpe, :neon_tetra, :goldfish, ]
 
    fishes.each do |fish|
      it "finds a #{fish}" do
        expect(subject.type?(fish)).to be true
      end
    end
  end
end
