# frozen_string_literal: true

##
# This class represents a series in power training session.
class Series
  ##
  # Initialization method for the +Series+ class.
  # Params:
  # +name+:: the name of the series
  def initialize(name)
    @name = name
    @intensity = 0
    @repetitions = 0
  end

  ##
  # Adding an intensity in the range [1, 10] to the series.
  # Params:
  # +intensity+:: intensity level
  def intensity(intensity)
    intensity_str = intensity.to_s
    intensity_int = intensity.to_s.to_i
    raise 'The given intensity level is not an integer.' if intensity_str != intensity_str.to_i.to_s
    raise 'The intensity level should be between 1 and 10.' if intensity_int < 1 || intensity_int > 10

    @intensity = intensity_int
  end

  ##
  # Adding a number of repetitions to the object.
  # Params:
  # +repetitions+:: number of repetitions inside of a series
  def repetitions(repetitions)
    repetitions_str = repetitions.to_s
    repetitions_int = repetitions.to_s.to_i
    raise 'The given number of repetitions is not an integer.' if repetitions_str != repetitions_str.to_i.to_s
    raise 'The minimum number of repetitions is 1.' if repetitions_int < 1

    @repetitions = repetitions_int
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
      intensity: @intensity,
      repetitions: @repetitions
    }
  end
end
