require_relative '../lib/tdl'


EasyTraining = Ast.build :Monday do
    session("Short swimming session today") {
		sport :"swim"
		info  :"Very easy training"
        avhr  :"130"
        td    :"30"
	}

	session("Bike ride") {
		sport :"bike"
		info  :"Endurance ride with intervals"
        avhr  :"140"
        td    :"250"
	}    

    interval("Number 1") {
		sport :"swim"
		info  :"Moderate"
        avhr  :"160"
        td    :"5"
        avhr_rest :"90"
        td_rest :"2"
    }
    
end

puts EasyTraining
puts EasyTraining.json

EasyTraining.save_to_file("training.txt")