require './lib/enigma'

class Key
  attr_reader :number

  def initialize(number = self.generate_number)
    @number = number.to_s.rjust(5,'0')
  end

  def generate_number
    rand(0..99999).to_s.rjust(5,'0')
  end
end
