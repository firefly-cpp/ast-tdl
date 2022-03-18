class Sport
	attr_reader :type

	def initialize(type)
		@type = type
	end
end

class Info
	attr_reader :message

	def initialize(message)
		@message = message
	end
end

class Avhr
	attr_reader :heart_rate

	def initialize(heart_rate)
		@heart_rate = heart_rate
	end
end

class Td
	attr_reader :duration

	def initialize(duration)
		@duration = duration
    end
end

class AvhrRest
	attr_reader :avhr_rest

	def initialize(avhr_rest)
		@avhr_rest = avhr_rest
	end
end

class TdRest
	attr_reader :td_rest

	def initialize(td_rest)
		@td_rest = td_rest
	end
end
