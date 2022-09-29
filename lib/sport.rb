# frozen_string_literal: true

require 'ruby-enum'

##
# This class represents a collection of sports.
class Sport
  include Ruby::Enum

  define :CYCLING, 'cycling'
  define :RUNNING, 'running'
  define :SWIMMING, 'swimming'
  define :CROSS_COUNTRY_SKIING, 'cross country skiing'
  define :WEIGHT_LIFTING, 'weight lifting'
end
