require "ast-tdl"


# Training description in AST-TDL domain specific language.
EasyTraining = Ast.build :Monday do
    session("Short swimming session today") {
		sport               :"swim"
		info                :"Very easy training"
        average_heart_rate  :"130"
        total_duration      :"30"
	}

	session("Bike ride") {
		sport               :"bike"
		info                :"Endurance ride with intervals"
        average_heart_rate  :"140"
        total_duration      :"250"
	}    

    interval("Number 1") {
		sport                   :"swim"
		info                    :"Moderate"
        average_heart_rate      :"160"
        total_duration          :"5"
        average_heart_rate_rest :"90"
        total_duration_rest     :"2"
    }
end


# Saving JSON-ized training to a file.
EasyTraining.save_to_file("training.json")