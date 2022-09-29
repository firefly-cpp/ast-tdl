# frozen_string_literal: true

require_relative 'series'
require_relative 'sport'

##
# This class represents a power training session.
class Power
  ##
  # Initialization method for the +Power+ class.
  # Params:
  # +name+:: the name of the power session
  def initialize(name)
    @name = name
    @series = []
    @sport = ''
  end

  ##
  # Building a new series from the domain specific language.
  # Params:
  # +name+:: the name of the series
  # +block+:: power session data
  def series(name, &block)
    series_data = Series.new(name)
    series_data.instance_eval(&block)
    @series << series_data
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
  # Converting a speed session to a string.
  def to_s
    @name
  end

  ##
  # Converting a session to a JSON-ized string.
  def to_hash
    {
      name: @name,
      sport: @sport,
      series: @series.collect(&:to_hash)
    }
  end
end
