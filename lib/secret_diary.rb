require_relative 'key'

class SecretDiary

  attr_reader :key, :diary

  def initialize
    @diary = ""
    @key = Key.new
  end

  def add_entry(diary_entry)
    fail 'Diary is locked' if key.locked? == true
    @diary << diary_entry
    'Entry Added'
  end

  def get_entries
    fail 'Diary is locked' if key.locked? == true
    @diary
  end
end

