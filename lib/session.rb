# frozen_string_literal: true

##
# This class represents a session.
class Session
  ##
  # Initialization method for the +Session+ class.
  # Params:
  # +name+:: the name of the session
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
    @average_heart_rate = heart_rate.to_s.to_i
  end

  ##
  # Adding a total duration to the object.
  # Params:
  # +duration+:: the duration in minutes
  def total_duration(duration)
    @total_duration = duration.to_s.to_i
  end

  ##
  # Converting a session to a string.
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
