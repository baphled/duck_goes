require 'spec_helper'

RSpec.describe Animals::Bird do
  describe '#move' do
    it 'can fly' do
      expect(subject.move).to eql('It can fly')
    end
  end
end
