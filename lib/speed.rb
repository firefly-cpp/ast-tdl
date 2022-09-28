# frozen_string_literal: true

require_relative 'sport'

##
# This class represents a speed training session.
class Speed
  ##
  # Initialization method for the +Speed+ class.
  # Params:
  # +name+:: the name of the speed session
  def initialize(name)
    @name = name
    @sport = ''
    @info = ''
    @average_heart_rate = 0
    @total_duration = 0
  end

  ##
  # Adding a sport type to the object.
  # Params:
  # +type+:: the type of the sport
  def sport(type)
    raise 'The sport name has to be from the Sport class collection.' unless Sport.values.include? type

    @sport = type
  end

  ##
  # Adding a message to the object.
  # Params:
  # +message+:: the info message
  def info(message)
    @info = message
  end

  ##
  # Adding an average heart rate to the object.
  # Params:
  # +heart_rate+:: the average heart rate in bpm
  def average_heart_rate(heart_rate)
    heart_rate_str = heart_rate.to_s
    heart_rate_int = heart_rate.to_s.to_i
    raise 'The given average heart rate is not an integer.' if heart_rate_str != heart_rate_str.to_i.to_s
    raise 'The average heart rate should be between 60 and 205 bpm.' if heart_rate_int < 60 || heart_rate_int > 205

    @average_heart_rate = heart_rate_int
  end

  ##
  # Adding a total duration to the object.
  # Params:
  # +duration+:: the duration in minutes
  def total_duration(duration)
    duration_str = duration.to_s
    duration_int = duration.to_s.to_i
    raise 'The given average heart rate is not an integer.' if duration_str != duration_str.to_i.to_s
    raise 'The duration has to be 1 minute at least.' if duration_int < 1

    @duration = duration_int
  end

  ##
  # Converting a speed session to a string.
  def to_s
    "#{@sport} #{@info}"
  end

  ##
  # Converting a session to a JSON-ized string.
  def to_hash
    hash = {
      name: @name,
      sport:	@sport,
      average_heart_rate: @average_heart_rate,
      total_duration: @total_duration,
    }

    hash[:info] = @info if @info != ''
    hash
  end
end
