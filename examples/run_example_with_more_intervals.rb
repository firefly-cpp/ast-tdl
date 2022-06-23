# frozen_string_literal: true

require 'ast-tdl'

# Training description in AST-TDL domain specific language.
training = Ast.build :Monday do
  session('Short swimming session today') do
    sport               :swim
    info                :"Very easy training"
    average_heart_rate  :"130"
    total_duration      :"30"
  end

  session('Bike ride') do
    sport               :bike
    info                :"Endurance ride with intervals"
    average_heart_rate  :"140"
    total_duration      :"250"
  end

  interval('Number 1') do
    sport                   :swim
    info                    :Moderate
    average_heart_rate      :"160"
    total_duration          :"5"
    average_heart_rate_rest :"90"
    total_duration_rest     :"2"
  end

  interval('Number 2') do
    sport                   :bike
    info                    :Hard
    average_heart_rate      :"190"
    total_duration          :"20"
    average_heart_rate_rest :"100"
    total_duration_rest     :"20"
  end
end

# Printing JSON-ized training to the console.
puts training.json
