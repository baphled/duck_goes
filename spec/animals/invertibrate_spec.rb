require 'spec_helper'

RSpec.describe Animals::Invertibrate do
  describe '#move' do
    it 'can move' do
      expect(subject.move).to eql('I can move')
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

    invertibrates = [ :insect, :crustacean, :mollusc, :echinoderm, :worm ]
 
    invertibrates.each do |invertibrate|
      it "finds a #{invertibrate}" do
        expect(subject.type?(invertibrate)).to be true
      end
    end
  end
end
