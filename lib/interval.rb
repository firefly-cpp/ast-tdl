# frozen_string_literal: true

##
# This class represents an interval.
class Interval
  ##
  # Initialization method for the +Interval+ class.
  # Params:
  # +name+:: the name of the interval
  def initialize(_name)
    @name = []
    @sport = []
    @info = []
    @average_heart_rate = []
    @total_duration = []
    @average_heart_rate_rest = []
    @total_duration_rest = []
  end

  ##
  # Building a new Sport object.
  # Params:
  # +type+:: the type of the sport
  def sport(type)
    @sport << Sport.new(type)
  end

  ##
  # Building a new Info object.
  # Params:
  # +message+:: the info message
  def info(message)
    @info << Info.new(message)
  end

  ##
  # Building a new AverageHeartRate object.
  # Params:
  # +heart_rate+:: the average heart rate in bpm
  def average_heart_rate(heart_rate)
    @average_heart_rate << AverageHeartRate.new(heart_rate)
  end

  ##
  # Building a new TotalDuration object.
  # Params:
  # +duration+:: the duration in seconds
  def total_duration(duration)
    @total_duration << TotalDuration.new(duration)
  end

  ##
  # Building a new AverageHeartRateRest object.
  # Params:
  # +heart_rate_rest+:: the average rest heart rate in bpm
  def average_heart_rate_rest(heart_rate_rest)
    @average_heart_rate_rest << AverageHeartRateRest.new(heart_rate_rest)
  end

  ##
  # Building a new TotalDurationRest object.
  # Params:
  # +duration rest+:: the rest duration in seconds
  def total_duration_rest(duration_rest)
    @total_duration_rest << TotalDurationRest.new(duration_rest)
  end

  ##
  # Converting an interval to a string.
  def to_s
    "#{@sport[0].type} #{@info[0].message}"
  end

  ##
  # Converting an interval to a JSON-ized string.
  def to_hash
    {
      name: @name.collect(&:to_hash),
      sport: @sport.collect(&:to_hash),
      info: @info.collect(&:to_hash),
      average_heart_rate: @average_heart_rate.collect(&:to_hash),
      total_duration: @total_duration.collect(&:to_hash),
      average_heart_rate_rest: @average_heart_rate_rest.collect(&:to_hash),
      total_duration_rest: @total_duration_rest.collect(&:to_hash),
    }
  end
end
