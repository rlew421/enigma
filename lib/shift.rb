class Shift

  def initialize(key, offset)
    @key = Key.new(key)
    @offset = Offset.new(offset)
  end

  def shift_keys
    number = @key.number
    key = number.split(//).each_cons(2).to_a
    joined_keys = key.map {|key| key.join}
    key_integers = joined_keys.map {|key| key.to_i}
  end

  def shift_offset
    date = @offset.date
    squared_date = date.to_i ** 2
    offsets = squared_date.to_s.split(//).to_a.last(4)
    offsets.map {|offset| offset.to_i}
  end
end
