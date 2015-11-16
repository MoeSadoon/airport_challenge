require './lib/weather.rb'

class Airport
  include Weather

  DEFAULT_CAPACITY = 1
  attr_reader :planes

  def initialize (capacity = DEFAULT_CAPACITY)
    @planes =[]
    @capacity = capacity
  end

  def land(plane)
    fail "can't land plane" if full? || stormy?
    plane.land
    @planes << plane

  end

  def release(plane)
    fail "can't take off in storm" if stormy?
    @planes.delete(plane)
  end


  private

  def full?
    planes.length >= DEFAULT_CAPACITY
  end

end
