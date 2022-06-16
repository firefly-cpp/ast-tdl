# Training Description Language (TDL) for Artificial Sport Trainer (AST)
AST-DSL is a very small domain-specific language, used for sport training description.

## Installation
    $ gem install ast-tdl

## Language description
Training Description Language (TDL) is based on Ruby. It is intended to be used for describing sport trainings that consist of sessions and intervals. Those contain various data, such as duration, average heart rate, sport type and many more.

## Examples
```ruby
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
```

### Session
```ruby
session("Short swimming session today") {
    sport 	        :"swim"
    info                :"Very easy training"
    average_heart_rate  :"130"
    total_duration      :"30"
}
```

## License
This package is distributed under the MIT License. This license can be found online at <http://www.opensource.org/licenses/MIT>.

## Disclaimer
This framework is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!
