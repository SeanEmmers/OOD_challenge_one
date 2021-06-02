class Key

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

  def locked?
    !!@locked
  end

end
