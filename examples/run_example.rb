# frozen_string_literal: true

# require 'ast-tdl'
require_relative '../lib/ast-tdl'

# Training description in AST-TDL domain specific language.
training = Ast.build('My first training') do
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
    type                    :fixed
  end
end

# Printing JSON-ized training to the console.
puts training.json
