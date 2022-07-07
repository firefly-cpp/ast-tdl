# frozen_string_literal: true

require_relative '../lib/ast-tdl'
require 'json'
require 'minitest/autorun'
require 'rubygems'

class AstTdlTest < Minitest::Test
  ##
  # Example training getter.
  def self.training
    Ast.build('My first training') do
      session('Short swimming session') do
        sport               :swim
        info                :"Very easy training"
        average_heart_rate  :"130"
        total_duration      :"30"
      end
    
      session('Bike ride') do
        sport               :cycling
        info                :"Endurance ride with intervals"
        average_heart_rate  :"140"
        total_duration      :"120"
      end
    
      interval('Sample interval') do
        sport                   :cycling
        info                    :Moderate
        speed_duration          :"5"
        recovery_duration       :"5"
        speed_heart_rate        :"180"
        recovery_heart_rate     :"90"
        repetitions             :"10"
      end
    end
  end

  ##
  # Version test.
  def test_version
    spec = Gem::Specification.load('ast-tdl.gemspec')
    assert_equal spec.version, '0.1.1'
  end

  ##
  # Name test.
  def test_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['name'], 'My first training'
  end

  ##
  # First session sport type test.
  def test_first_session_sport_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['session'][0]['sport'], 'swim'
  end

  ##
  # First session info message test.
  def test_first_session_info_message
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['session'][0]['info'], 'Very easy training'
  end
end
