require "./lib/key"

class Enigma
  attr_reader :alphabet, :date

  def initialize
    @date = Time.new.strftime("%d%m%y")
    @alphabet = ("a".."z").to_a << " "
    @key = key
  end
end
