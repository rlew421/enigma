class Key
  attr_reader :number

  def initialize(number = self.generate_number)
    @number = number.to_s.rjust(5,'0')
  end

  def generate_number
    rand(0..99999).to_s.rjust(5,'0')
  end

  def split_number(key = @key)
    keys = key.split(//).each_cons(2).to_a
    joined_keys = keys.map do |key|
      key.join
    end
    joined_key_integers = joined_keys.map do |key_pairs|
      key_pair.to_i
    end
  end
end
