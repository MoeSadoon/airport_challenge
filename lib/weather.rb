module Weather

  def stormy?
    weather_status <=3 ? true : false
  end

  private

  def weather_status
    rand(10)
  end

end
