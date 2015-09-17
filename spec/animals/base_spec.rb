require "spec_helper"

RSpec.describe Animals::Base do
  subject { described_class.new }

  describe '#speak' do
    it 'does not know how to speak' do
      expect {
        subject.speak
      }.to raise_error Animals::NotImplemented::Speak
    end
  end

  describe '#move' do
    it 'does not know how to move' do
      expect {
        subject.move
      }.to raise_error Animals::NotImplemented::Move
    end
  end
end
