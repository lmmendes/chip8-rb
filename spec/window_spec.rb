require "spec_helper"

describe Chip8::Window do
  context 'retrieving window size' do
    it 'should have default width' do
      expect(subject.width).to eq(640)
    end

    it 'should have default height' do
      expect(subject.height).to eq(480)
    end
  end
end
