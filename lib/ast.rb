# frozen_string_literal: true

require 'json'
require_relative 'classes'
require_relative 'interval'
require_relative 'session'

##
# This module is intended to be used for building trainings
# from the domain specific language AST-TDL.
module Ast
  ##
  # Building a new training from the domain specific language.
  # Params:
  # +name+:: the name of the training
  # +block+:: training data
  def self.build(name, &block)
    training = Training.new(name)
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
    def initialize(name)
      @name = name
      @session = []
      @interval = []
    end

    ##
    # Building a new session from the domain specific language.
    # Params:
    # +name+:: the name of the session
    # +block+:: session data
    def session(name, &block)
      training_type = Session.new(name)
      training_type.instance_eval(&block)
      @session << training_type
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
    # Converting a training to a string.
    def to_s
      "#{@name} #{@session[0]}"
    end

    ##
    # Converting a training to a JSON-ized string.
    def json
      training_json = {
        name: @name,
        session: @session.collect(&:to_hash),
        interval: @interval.collect(&:to_hash)
      }
      training_json.to_json
    end

    ##
    # Saving a training to a JSON file.
    # Params:
    # +filename+:: the desired name of the file
    def save_to_file(filename)
      f = File.open(filename, 'w')
      f.puts(json)
      f.close
    end
  end
end
