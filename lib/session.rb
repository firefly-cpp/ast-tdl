class Session
	def initialize(name)
		@name = []
		@sport = []
		@info = []
		@avhr = []
		@td = []
	end
	def sport(type)
		@sport << Sport.new(type)
	end

	def info(message)
		@info << Info.new(message)
	end
		def avhr(heart_rate)
		@avhr << Avhr.new(heart_rate)
	end
		def td(duration)
		@td << Td.new(duration)
	end
		def to_s
		str = "#{@sport[0].type} #{@info[0].message}"
	end
end
