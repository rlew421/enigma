class Offset
  attr_reader :date

  def initialize(date = Time.new.strftime("%d%m%y"))
    @date = date
  end

  def current_date
    Time.new.strftime("%d%m%y")
  end
end
