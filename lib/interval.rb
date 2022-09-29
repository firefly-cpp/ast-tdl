# frozen_string_literal: true

require_relative 'sport'

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
    @type = ''
  end

  ##
  # Adding a sport to the object.
  # Params:
  # +type+:: the type of the sport
  def sport(type)
    raise 'The sport name has to be from the Sport class collection.' unless Sport.values.include? type

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
    speed_duration_str = speed_duration.to_s
    speed_duration_int = speed_duration.to_s.to_i
    raise 'The given speed duration is not an integer.' if speed_duration_str != speed_duration_str.to_i.to_s
    raise 'The speed duration has to be 1 minute at least.' if speed_duration_int < 1

    @speed_duration = speed_duration_int
  end

  ##
  # Adding a recovery duration of an interval to the object.
  # Params:
  # +recovery_duration+:: the duration of the recovery segment in minutes
  def recovery_duration(recovery_duration)
    recovery_duration_str = recovery_duration.to_s
    recovery_duration_int = recovery_duration.to_s.to_i
    raise 'The given recovery duration is not an integer.' if recovery_duration_str != recovery_duration_str.to_i.to_s
    raise 'The recovery duration has to be 1 minute at least.' if recovery_duration_int < 1

    @recovery_duration = recovery_duration_int
  end

  ##
  # Adding a speed heart rate of an interval to the object.
  # Params:
  # +speed_heart_rate+:: the average speed heart rate in bpm
  def speed_heart_rate(speed_heart_rate)
    speed_hr_str = speed_heart_rate.to_s
    speed_hr_int = speed_heart_rate.to_s.to_i
    raise 'The given average heart rate is not an integer.' if speed_hr_str != speed_hr_str.to_i.to_s
    raise 'The speed heart rate should be between 60 and 205 bpm.' if speed_hr_int < 60 || speed_hr_int > 205

    @speed_heart_rate = speed_hr_int
  end

  ##
  # Adding a recovery heart rate of an interval to the object.
  # Params:
  # +recovery_heart_rate+:: the average speed heart rate in bpm
  def recovery_heart_rate(recovery_heart_rate)
    recovery_hr_str = recovery_heart_rate.to_s
    recovery_hr_int = recovery_heart_rate.to_s.to_i
    raise 'The given average heart rate is not an integer.' if recovery_hr_str != recovery_hr_str.to_i.to_s
    raise 'The recovery heart rate should be between 60 and 205 bpm.' if recovery_hr_int < 60 || recovery_hr_int > 205

    @recovery_heart_rate = recovery_hr_int
  end

  ##
  # Adding a number of repetitions to the object.
  # Params:
  # +repetitions+:: number of interval repetitions
  def repetitions(repetitions)
    repetitions_str = repetitions.to_s
    repetitions_int = repetitions.to_s.to_i
    raise 'The given number of repetitions is not an integer.' if repetitions_str != repetitions_str.to_i.to_s
    raise 'The minimum number of repetitions is 1.' if repetitions_int < 1

    @repetitions = repetitions_int
  end

  ##
  # Adding an interval type to the object.
  # Params:
  # +type+:: interval type
  def type(type)
    @type = type
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
      repetitions: @repetitions,
      type: @type
    }

    hash[:info] = @info if @info
    hash
  end
end
