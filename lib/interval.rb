# frozen_string_literal: true

##
# This class represents an interval.
class Interval
  ##
  # Initialization method for the +Interval+ class.
  # Params:
  # +name+:: the name of the interval
  def initialize(name)
    @name = name
    @sport = ''
    @info = ''
    @speed_duration = 0
    @recovery_duration = 0
    @speed_heart_rate = 0
    @recovery_heart_rate = 0
    @repetitions = 0
  end

  ##
  # Adding a sport to the object.
  # Params:
  # +type+:: the type of the sport
  def sport(type)
    @sport = type
  end

  ##
  # Adding an info message to the object.
  # Params:
  # +message+:: the info message
  def info(message)
    @info = message
  end

  ##
  # Adding a speed duration of an interval to the object.
  # Params:
  # +speed_duration+:: the duration of the speed segment in minutes
  def speed_duration(speed_duration)
    @speed_duration = speed_duration.to_s.to_i
  end

  ##
  # Adding a recovery duration of an interval to the object.
  # Params:
  # +recovery_duration+:: the duration of the recovery segment in minutes
  def recovery_duration(recovery_duration)
    @recovery_duration = recovery_duration.to_s.to_i
  end

  ##
  # Adding a speed heart rate of an interval to the object.
  # Params:
  # +speed_heart_rate+:: the average speed heart rate in bpm
  def speed_heart_rate(speed_heart_rate)
    @speed_heart_rate = speed_heart_rate.to_s.to_i
  end

  ##
  # Adding a recovery heart rate of an interval to the object.
  # Params:
  # +recovery_heart_rate+:: the average speed heart rate in bpm
  def recovery_heart_rate(recovery_heart_rate)
    @recovery_heart_rate = recovery_heart_rate.to_s.to_i
  end

  ##
  # Adding a number of repetitions to the object.
  # Params:
  # +repetitions+:: number of interval repetitions
  def repetitions(repetitions)
    @repetitions = repetitions.to_s.to_i
  end

  ##
  # Converting an interval to a string.
  def to_s
    "#{@sport} #{@info}"
  end

  ##
  # Converting an interval to a JSON-ized string.
  def to_hash
    hash = {
      name: @name,
      sport: @sport,
      info: @info,
      speed_duration: @speed_duration,
      recovery_duration: @recovery_duration,
      speed_heart_rate: @speed_heart_rate,
      recovery_heart_rate: @recovery_heart_rate,
      repetitions: @repetitions
    }

    hash[:info] = @info if @info
    hash
  end
end
