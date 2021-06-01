class Key

attr_reader :locked

  def initialize
    @locked = true
  end

  def lock
    @locked = true
    'Locked'
  end

  def unlock
    @locked = false
    'Unlocked'
  end
end