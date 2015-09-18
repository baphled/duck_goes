require "spec_helper"

RSpec.describe Animals::Base do
  subject { described_class.new(name: :fox) }

  it 'has a name' do
    expect(subject.name).to eql('Fox')
  end

  it 'has a type' do
    expect(subject.type).to eql(:base)
  end

  describe '.types' do
    subject { described_class }
    it 'must be overidden' do
      expect {
        subject.types
      }.to raise_error Animals::NotImplemented::AnimalTypes
    end
  end

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
