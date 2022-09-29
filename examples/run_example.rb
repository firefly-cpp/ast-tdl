# frozen_string_literal: true

require 'ast-tdl'

# Training description in AST-TDL domain specific language.
training = Ast.build do
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

# Printing JSON-ized training to the console.
puts training.json
