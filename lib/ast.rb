# frozen_string_literal: true

require 'json'
require_relative 'interval'
require_relative 'power'
require_relative 'speed'
require_relative 'sport'

##
# This module is intended to be used for building trainings
# from the domain specific language AST-TDL.
module Ast
  ##
  # Building a new training from the domain specific language.
  # Params:
  # +block+:: training data
  def self.build(&block)
    training = Training.new()
    training.instance_eval(&block)
    training
  end

  ##
  # This class represents a training with a name, sessions and intervals.
  class Training
    ##
    # Initialization method for the +Training+ class.
    # Params:
    # +name+:: the name of the training
    def initialize
      @speed = []
      @interval = []
      @power = []
    end

    ##
    # Building a new speed session from the domain specific language.
    # Params:
    # +name+:: the name of the speed session
    # +block+:: speed session data
    def speed(name, &block)
      training_type = Speed.new(name)
      training_type.instance_eval(&block)
      @speed << training_type
    end

    ##
    # Building a new interval from the domain specific language.
    # Params:
    # +name+:: the name of the interval
    # +block+:: interval data
    def interval(name, &block)
      interval_data = Interval.new(name)
      interval_data.instance_eval(&block)
      @interval << interval_data
    end

    ##
    # Building a new power session from the domain specific language.
    # Params:
    # +name+:: the name of the power session
    # +block+:: power session data
    def power(name, &block)
      power_data = Power.new(name)
      power_data.instance_eval(&block)
      @power << power_data
    end

    ##
    # Converting a training to a string.
    def to_s
      speed_number = @speed.length
      interval_number = @interval.length
      power_number = @power.length

      "TRAINING DATA:\n"\
      "Speed sessions: #{speed_number}\n"\
      "Interval sessions: #{interval_number}\n"\
      "Power sessions: #{power_number}\n\n"
    end

    ##
    # Converting a training to a JSON-ized string.
    def json
      training_json = {
        speed: @speed.collect(&:to_hash),
        interval: @interval.collect(&:to_hash),
        power: @power.collect(&:to_hash)
      }
      JSON.pretty_generate(training_json)
    end

    ##
    # Saving a training to a JSON file.
    # Params:
    # +filename+:: the desired name of the file
    def save_to_file(filename)
      f = File.open("../trainings/#{filename}", 'w')
      f.puts(json)
      f.close
    end
  end
end
