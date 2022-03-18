class Interval
	def initialize(name)
		@name = []
		@sport = []
		@info = []
		@avhr = []
		@td = []
        @avhr_rest = []
        @td_rest = []
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
    
    	def avhr_rest(heart_rate_rest)
		@avhr_rest << AvhrRest.new(heart_rate_rest)
	end
    
		def td_rest(duration_rest)
		@td_rest << TdRest.new(duration_rest)
    end
        
		def to_s
		str = "#{@sport[0].type} #{@info[0].message}"
	end
end
