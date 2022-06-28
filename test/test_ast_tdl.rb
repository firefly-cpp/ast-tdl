# frozen_string_literal: true

require_relative '../lib/ast-tdl'
require 'json'
require 'minitest/autorun'
require 'rubygems'

class AstTdlTest < Minitest::Test
  ##
  # Example training getter.
  def self.training
    Ast.build :Monday do
      session('Short swimming session today') {
        sport               :"swim"
        info                :"Very easy training"
        average_heart_rate  :"130"
        total_duration      :"30"
      }
    
      session('Bike ride') {
        sport               :"bike"
        info                :"Endurance ride with intervals"
        average_heart_rate  :"140"
        total_duration      :"250"
      }
    
      interval('Number 1') {
        sport                   :"swim"
        info                    :"Moderate"
        average_heart_rate      :"160"
        total_duration          :"5"
        average_heart_rate_rest :"90"
        total_duration_rest     :"2"
      }
    end
  end

  ##
  # Version test.
  def test_version
    spec = Gem::Specification.load('ast-tdl.gemspec')
    assert_equal spec.version, '0.0.4'
  end

  ##
  # Name test.
  def test_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['name'], 'Monday'
  end

  ##
  # First session sport type test.
  def test_first_session_sport_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['session'][0]['sport'][0]['type'], 'swim'
  end

  ##
  # First session info message test.
  def test_first_session_info_message
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['session'][0]['info'][0]['message'], 'Very easy training'
  end
end
