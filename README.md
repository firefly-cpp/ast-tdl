# Training Description Language (TDL) for Artificial Sport Trainer (AST)
![scheme](https://user-images.githubusercontent.com/73126820/175337865-77344476-b7c8-45d4-bda2-0aca82aebefd.png)

ast-dsl is intended to be a small DSL for practical definition and description of sports training that can be automatically or manually defined and used in conjunction with Artificial Sport Trainer.

## Installation
    $ gem install ast-tdl

## Language description
Training Description Language (TDL) is implemented in Ruby. Currently, the description of sports training sessions and intervals is now supported. Those contain various data, such as duration, average heart rate, sport type, and many more.

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

## References

Fister Jr, I., Fister, I., Iglesias, A., Galvez, A., Deb, S., & Fister, D. (2021). On deploying the Artificial Sport Trainer into practice. arXiv preprint [arXiv:2109.13334](https://arxiv.org/abs/2109.13334).
