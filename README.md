<h1 align="center">
  Training Description Language (TDL) for Artificial Sport Trainer (AST)
</h1>

<p align="center">
  <img alt="Gem package" src="https://img.shields.io/gem/v/ast-tdl?color=blue" href="https://rubygems.org/gems/ast-tdl">
  <img alt="AUR package" src="https://img.shields.io/aur/version/ruby-ast-tdl?color=blue&label=Arch%20Linux&logo=arch-linux" href="https://aur.archlinux.org/packages/ruby-ast-tdl">
</p>

<p align="center">
  <img alt="DOI" src="https://img.shields.io/badge/DOI-10.3390/app122412741-blue" href="https://doi.org/10.3390/app122412741">
</p>

<p align="center">
  <a href="#-motivation">💡 Motivation</a> •
  <a href="#-feature-diagram">✨ Feature diagram</a> •
  <a href="#-installation">📦 Installation</a> •
  <a href="#️-language-description">🗣️ Language description</a> •
  <a href="#-examples">🚀 Examples</a> •
  <a href="#-license">🔑 License</a> •
  <a href="#-references">📝 References</a>
</p>

## 💡 Motivation
ast-dsl is intended to be a small DSL for practical definition and description of sports training that can be automatically or manually defined and used in conjunction with Artificial Sport Trainer.

According to sports theory, three major types of sports training exist:
- speed training ⚡
- interval training ⏱️
- power training 💪

Speed training is intended to supply an athlete with energy, coordination and power adaptation. This type of sports training is often used by middle-distance athletes, as it can enhance their performance.

Interval training was first described by Reindell and Roskamm, however, it was popularized by the famous Chech athlete Emil Zatopek. This type of training consists of a speed phase followed by a recovery phase. This sequence is repeated several times, and the number of repetitions depends on the interval training plan.

Power training has been proven to be an effective method for increasing muscle mass. Consequently, in most cases, they are used in extreme sports, such as weight lifting, where the lactate amount in blood is significant.

## ✨ Feature diagram
![ast-tdl](https://user-images.githubusercontent.com/73126820/193033601-6c94b328-30a4-4b25-86a3-0fb81cebca3d.png)

## 📦 Installation
To install `ast-dsl` with gem, use:

```sh
$ gem install ast-tdl
```
To install `ast-tdl` on Alpine, use:

```sh
$ apk add ruby-ast-tdl
```

To install `ast-dsl` on Arch Linux, use an [AUR helper](https://wiki.archlinux.org/title/AUR_helpers):

```sh
$ yay -Syyu ruby-ast-tdl
```

## 🗣️ Language description
Training Description Language (TDL) is implemented in Ruby. All three major training types (speed, interval and power) can be described in TDL.

Speed training sessions are described with their name, sport type, proposed average heart rate and total duration, while additional information is optional. 

Interval training sessions and their speed counterparts are described with their name, type of sport and optional information. However, heart rate and duration of intervals are described separately for both the speed and recovery phases. Additionally, the number of repetitions and interval training types are also described along with the features mentioned earlier.

Power training sessions are described with their names and sports types. However, as opposed to speed and interval they are described with series, which are further described with their name, intensity level from 1 to 10 and number of repetitions.

## 🚀 Examples
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

The description of the sports training consists of four sessions: two speed sessions, one interval session and one power session. The first (swimming speed) session is relatively easy, as the planned heart rate during the 30-minute session is prescribed to be 130 BPM. The second (cycling speed) session is described as a 2-hour endurance ride with the prescribed average heart rate of 140 BPM. The third session is a hard, running interval training. It consists of 10 fixed intervals, where the speed phase and recovery duration are 1 minute each. The proposed heart rate during speed phases is set at 180 BPM, while it is set to half the heart rate (90 BPM) in recovery phases. The final (weight-lifting) power session consists of two series: the first is moderate intensity with 20 repetitions, and the second is high intensity with 80 repetitions.

## 🔑 License
This package is distributed under the MIT License. This license can be found online at <http://www.opensource.org/licenses/MIT>.

## Disclaimer
This framework is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!

## 📝 References
Lukač, L., Fister Jr., I., Fister, I. "[Digital Twin in Sport: From an Idea to Realization](https://www.mdpi.com/2076-3417/12/24/12741)." Applied Sciences 12.24 (2022): 12741.

Fister Jr, I., Fister, I., Iglesias, A., Galvez, A., Deb, S., & Fister, D. (2021). On deploying the Artificial Sport Trainer into practice. arXiv preprint [arXiv:2109.13334](https://arxiv.org/abs/2109.13334).

Lukač, L. (2022). [Aplikacija koncepta digitalnega dvojčka v športu](https://dk.um.si/IzpisGradiva.php?id=82612). University of Maribor, Faculty of Electrical Engineering and Computer Science. [Access: 29th September, 2022].
