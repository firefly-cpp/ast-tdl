require 'json'


class Sport
	attr_reader :type

	def initialize(type)
		@type = type
	end

	def to_hash
		sport_json = {
			type: @type
		}
	end
end

class Info
	attr_reader :message

	def initialize(message)
		@message = message
	end

	def to_hash
		info_json = {
			message: @message
		}
	end
end

class Avhr
	attr_reader :heart_rate

	def initialize(heart_rate)
		@heart_rate = heart_rate
	end

	def to_hash
		info_json = {
			average_hr: @heart_rate
		}
	end
end

class Td
	attr_reader :duration

	def initialize(duration)
		@duration = duration
    end

	def to_hash
		td_json = {
			duration: @duration
		}
	end
end

class AvhrRest
	attr_reader :avhr_rest

	def initialize(avhr_rest)
		@avhr_rest = avhr_rest
	end

	def to_hash
		avhr_json = {
			average_hr_rest: @avhr_rest
		}
	end
end

class TdRest
	attr_reader :td_rest

	def initialize(td_rest)
		@td_rest = td_rest
	end

	def to_hash
		td_json = {
			duration_rest: @td_rest
		}
	end
end
