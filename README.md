# Training Description Language (TDL) for Artificial Sport Trainer (AST)

## Motivation
ast-dsl is intended to be a small DSL for practical definition and description of sports training that can be automatically or manually defined and used in conjunction with Artificial Sport Trainer.

## Feature diagram
![scheme](https://user-images.githubusercontent.com/73126820/177511757-afb21ada-8b3e-412c-a24f-2cec7d837b1a.png)

## Installation
    $ gem install ast-tdl

## Language description
Training Description Language (TDL) is implemented in Ruby. Currently, the description of sports training sessions and intervals is now supported. Those contain various data, such as duration, average heart rate, sport type, and many more.

## Examples
```ruby
Ast.build('My first training') do
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
  end
end
```

### Session
```ruby
session('Bike ride') do
  sport               :cycling
  info                :"Endurance ride with intervals"
  average_heart_rate  :"140"
  total_duration      :"120"
end
```

### Interval
```ruby
interval('Sample interval') do
  sport                :cycling
  info                 :Moderate
  speed_duration       :"5"
  recovery_duration    :"5"
  speed_heart_rate     :"180"
  recovery_heart_rate  :"90"
  repetitions          :"10"
end
```

## License
This package is distributed under the MIT License. This license can be found online at <http://www.opensource.org/licenses/MIT>.

## Disclaimer
This framework is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!

## References

Fister Jr, I., Fister, I., Iglesias, A., Galvez, A., Deb, S., & Fister, D. (2021). On deploying the Artificial Sport Trainer into practice. arXiv preprint [arXiv:2109.13334](https://arxiv.org/abs/2109.13334).
