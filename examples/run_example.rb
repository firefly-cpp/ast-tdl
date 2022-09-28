# frozen_string_literal: true

require_relative '../lib/ast-tdl'

# Training description in AST-TDL domain specific language.
training = Ast.build do
  speed('Short swimming session') do
    sport               Sport::RUNNING
    info                :"Very easy training"
    average_heart_rate  :"130"
    total_duration      :"30"
  end

  speed('Bike ride') do
    sport               Sport::CYCLING
    info                :"Endurance ride with intervals"
    average_heart_rate  :"140"
    total_duration      :"120"
  end

  interval('Sample interval') do
    sport                   Sport::CYCLING
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
