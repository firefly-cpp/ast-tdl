# Training Description Language (TDL) for Artificial Sport Trainer (AST)

---

[![Gem package](https://img.shields.io/gem/v/ast-tdl?color=blue)](https://rubygems.org/gems/ast-tdl)
[![AUR package](https://img.shields.io/aur/version/ruby-ast-tdl?color=blue&label=Arch%20Linux&logo=arch-linux)](https://aur.archlinux.org/packages/ruby-ast-tdl)

[![DOI](https://img.shields.io/badge/DOI-10.3390/app122412741-blue)](https://doi.org/10.3390/app122412741)

## Motivation
ast-dsl is intended to be a small DSL for practical definition and description of sports training that can be automatically or manually defined and used in conjunction with Artificial Sport Trainer.

According to sports theory, three major types of sports trainings exist:
- speed trainings,
- interval trainings and
- power trainings.

Speed trainings are intended for supplying an athlete with energy, coordination and power adaptation. This type of sports training is often used by middle-distance athletes, as they can be very useful for enhancing their performance.

Interval training has been described for the first time by Reindell and Roskamm, however, it was popularized by the famous Chech athlete Emil Zatopek. This type of training consists of a speed phase that is followed by a recovery phase. This sequence is repeated for several times where the number of repetitions depends on interval training plan.

Power trainings have been proven to be an effective method for increasing muscle mass. Consequently, in most cases they are used at extreme sports, such as weight lifting, where the lactate amount in blood is significant.

## Feature diagram
![ast-tdl](https://user-images.githubusercontent.com/73126820/193033601-6c94b328-30a4-4b25-86a3-0fb81cebca3d.png)

## Installation
Install ast-dsl with gem:

```sh
$ gem install ast-tdl
```
To install ast-tdl on Alpine, use:

```sh
$ apk add ruby-ast-tdl
```

To install ast-dsl on Arch Linux, please use an [AUR helper](https://wiki.archlinux.org/title/AUR_helpers):

```sh
$ yay -Syyu ruby-ast-tdl
```

## Language description
Training Description Language (TDL) is implemented in Ruby. All three major training types (speed, interval and power) can be described in TDL.

Speed training sessions are described with their name, sport type, proposed average heart rate and total duration, while the additional information is optional. 

Interval training sessions, as well as their speed counterparts, are described with their name, type of sport and optional information. However, heart rate and duration of intervals are described separately for both speed and recovery phase. Additionally, number of repetitions and interval training type are also described along with forementioned features.

Power training sessions are described with their names and sport types, but opposed to speed and interval they are described with series, which are furtherly described with their name, intensity level from 1 to 10 and number of repetitions. 

## Examples
### Example of a sports training
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
      intensity:   :"5"
      repetitions  :"20"
    end
    series('Big ox') do
      intensity    :"10"
      repetitions  :"80"
    end
  end
end
```
The description of the sports training consists of four sessions: two speed sessions, one interval sesssion and one power session. The first, swimming speed session is relatively easy, as the planned heart rate throughout the whole session is prescribed to be 130 bpm, and it lasts for half an hour. The next, cycling speed session is described as a 2-hour endurance ride with the prescribed average heart rate of 140 bpm. The third session is a hard, running interval training. It consists of 10 fixed intervals, where speed phase and recovery duration are 1 minute each. The proposed heart rate during speed phases is set at 180 bpm, while in recovery phases it is set to half the speed heart rate: 90 bpm. The final, weight lifting power session consists of two series, the first being of middle intensity with 20 repetitions and the second being of extreme intensity with 80 repetitions.

## License
This package is distributed under the MIT License. This license can be found online at <http://www.opensource.org/licenses/MIT>.

## Disclaimer
This framework is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!

## References
Lukač, L., Fister Jr., I., Fister, I. "[Digital Twin in Sport: From an Idea to Realization](https://www.mdpi.com/2076-3417/12/24/12741)." Applied Sciences 12.24 (2022): 12741.

Fister Jr, I., Fister, I., Iglesias, A., Galvez, A., Deb, S., & Fister, D. (2021). On deploying the Artificial Sport Trainer into practice. arXiv preprint [arXiv:2109.13334](https://arxiv.org/abs/2109.13334).

Lukač, L. (2022). [Aplikacija koncepta digitalnega dvojčka v športu](https://dk.um.si/IzpisGradiva.php?id=82612). University of Maribor, Faculty of Electrical Engineering and Computer Science. [Access: 29th September, 2022].
