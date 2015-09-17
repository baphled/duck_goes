require "spec_helper"

RSpec.describe Animals::Base do
  subject { described_class.new }

  describe '#speak' do
    it 'does not know how to speak' do
      expect {
        subject.speak
      }.to raise_error SpeakNotImplemented
    end
  end
end
