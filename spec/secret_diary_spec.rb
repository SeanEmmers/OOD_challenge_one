require 'secret_diary'

describe SecretDiary do

  describe '#add_entry' do
    it 'Adds an entry to the diary' do
    subject.key.unlock
    expect(subject.add_entry('Dear Diary')).to eq 'Entry Added'
    end

    it 'doesnt let you add an entry when the diary is locked' do
      subject.key.lock
      expect{ subject.add_entry('Dear Diary') }.to raise_error 'Diary is locked'
    end
  end

  describe '#get_entries' do
    it 'returns the diary entries' do
      subject.key.unlock
      expect(subject.get_entries).to eq subject.diary
    end

    it 'doesnt get entries when diary is locked' do
      subject.key.lock
      expect{ subject.get_entries }.to raise_error 'Diary is locked'
    end
  end
end
