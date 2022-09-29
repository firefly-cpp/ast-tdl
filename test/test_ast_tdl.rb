# frozen_string_literal: true

require_relative '../lib/ast-tdl'
require 'json'
require 'minitest/autorun'
require 'rubygems'

class AstTdlTest < Minitest::Test
  ##
  # Example training getter.
  def self.training
    Ast.build do
      speed('Swimming with the dolphins') do
        sport                   Sport::SWIMMING
        info                    :"Very easy training"
        average_heart_rate      :"130"
        total_duration          :"30"
      end
    
      speed('Cross the country') do
        sport                   Sport::CYCLING
        info                    :"Endurance ride"
        average_heart_rate      :"140"
        total_duration          :"120"
      end
    
      interval('Following Emil Zatopek') do
        sport                   Sport::RUNNING
        info                    :Hard
        speed_duration          :"1"
        recovery_duration       :"1"
        speed_heart_rate        :"180"
        recovery_heart_rate     :"90"
        repetitions             :"10"
        type                    :fixed
      end
    
      power('As strong as an ox') do
        sport                   Sport::WEIGHT_LIFTING
        series('Little ox') do
          intensity             :"5"
          repetitions           :"20"
        end
        series('Big ox') do
          intensity             :"10"
          repetitions           :"80"
        end
      end
    end
  end

  ################################################################################################################
  # FIRST SPEED
  ################################################################################################################
  ##
  # First speed session name test.
  def test_first_session_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][0]['name'], 'Swimming with the dolphins'
  end

  ##
  # First speed session sport type test.
  def test_first_session_sport_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][0]['sport'], 'swimming'
  end

  ##
  # First speed session info message test.
  def test_first_session_info_message
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][0]['info'], 'Very easy training'
  end

  ##
  # First speed session average heart rate test.
  def test_first_session_average_heart_rate
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][0]['average_heart_rate'], 130
  end

  ##
  # First speed session total duration test.
  def test_first_session_total_duration
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][0]['total_duration'], 30
  end

  ################################################################################################################
  # SECOND SPEED
  ################################################################################################################
  ##
  # Second speed session name test.
  def test_second_session_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][1]['name'], 'Cross the country'
  end

  ##
  # Second speed session sport type test.
  def test_second_session_sport_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][1]['sport'], 'cycling'
  end

  ##
  # Second speed session info message test.
  def test_second_session_info_message
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][1]['info'], 'Endurance ride'
  end

  ##
  # Second speed session average heart rate test.
  def test_second_session_average_heart_rate
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][1]['average_heart_rate'], 140
  end

  ##
  # Second speed session total duration test.
  def test_second_session_total_duration
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['speed'][1]['total_duration'], 120
  end

  ################################################################################################################
  # FIRST INTERVAL
  ################################################################################################################
  ##
  # First interval session name test.
  def test_first_interval_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['name'], 'Following Emil Zatopek'
  end

  ##
  # First interval session sport type test.
  def test_first_interval_sport_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['sport'], 'running'
  end

  ##
  # First interval session info message test.
  def test_first_interval_info_message
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['info'], 'Hard'
  end

  ##
  # First interval session speed duration test.
  def test_first_interval_speed_duration
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['speed_duration'], 1
  end

  ##
  # First interval session recovery duration test.
  def test_first_interval_recovery_duration
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['recovery_duration'], 1
  end

  ##
  # First interval session speed heart rate test.
  def test_first_interval_speed_heart_rate
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['speed_heart_rate'], 180
  end

  ##
  # First interval session recovery heart rate test.
  def test_first_interval_recovery_heart_rate
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['recovery_heart_rate'], 90
  end

  ##
  # First interval sesion repetitions test.
  def test_first_interval_repetitions
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['repetitions'], 10
  end

  ##
  # First interval sesion type test.
  def test_first_interval_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['interval'][0]['type'], 'fixed'
  end

  ################################################################################################################
  # FIRST POWER
  ################################################################################################################
  ##
  # First power session name test.
  def test_first_power_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['name'], 'As strong as an ox'
  end

  ##
  # First power session sport type test.
  def test_first_power_sport_type
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['sport'], 'weight lifting'
  end

  ##
  # First power session first series name test.
  def test_first_power_first_series_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['series'][0]['name'], 'Little ox'
  end

  ##
  # First power session first series intensity test.
  def test_first_power_first_series_intensity
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['series'][0]['intensity'], 5
  end

  ##
  # First power session first series repetitions test.
  def test_first_power_first_series_repetitions
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['series'][0]['repetitions'], 20
  end

  ##
  # First power session second series name test.
  def test_first_power_second_series_name
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['series'][1]['name'], 'Big ox'
  end

  ##
  # First power session second series intensity test.
  def test_first_power_second_series_intensity
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['series'][1]['intensity'], 10
  end

  ##
  # First power session second series repetitions test.
  def test_first_power_second_series_repetitions
    training = JSON.parse(AstTdlTest.training.json)
    assert_equal training['power'][0]['series'][1]['repetitions'], 80
  end
end
