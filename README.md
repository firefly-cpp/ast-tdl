# Training Description Language (TDL) for Artificial Sport Trainer (AST)

---

[![DOI](https://img.shields.io/badge/DOI-10.1109/ISCMI53840.2021.9654817-blue)](https://doi.org/10.1109/ISCMI53840.2021.9654817)

## Motivation
ast-dsl is intended to be a small DSL for practical definition and description of sports training that can be automatically or manually defined and used in conjunction with Artificial Sport Trainer.

## Feature diagram
![ast-tdl](https://user-images.githubusercontent.com/73126820/193033601-6c94b328-30a4-4b25-86a3-0fb81cebca3d.png)

## Installation
    $ gem install ast-tdl

## Language description
Training Description Language (TDL) is implemented in Ruby. Currently, the description of sports training sessions and intervals is now supported. Those contain various data, such as duration, average heart rate, sport type, and many more.

## Examples
```ruby
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
```

### Speed session
```ruby
speed('Cross the country') do
  sport                   Sport::CYCLING
  info                    :"Endurance ride"
  average_heart_rate      :"140"
  total_duration          :"120"
end
```

### Interval session
```ruby
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
```

### Power session
```ruby
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
```

## License
This package is distributed under the MIT License. This license can be found online at <http://www.opensource.org/licenses/MIT>.

## Disclaimer
This framework is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!

## References

Fister Jr, I., Fister, I., Iglesias, A., Galvez, A., Deb, S., & Fister, D. (2021). On deploying the Artificial Sport Trainer into practice. arXiv preprint [arXiv:2109.13334](https://arxiv.org/abs/2109.13334).
