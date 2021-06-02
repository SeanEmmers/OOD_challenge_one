require 'key'

describe Key do

  describe '#lock' do
    it 'locks the diary' do
      expect(subject.locked?).to eq true
    end
  end

  describe '#unlock' do
    it 'unlocks the diary' do
      subject.unlock
      expect(subject.locked?).to eq false
    end
  end
end