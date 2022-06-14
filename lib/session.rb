##
# This class represents a session.
class Session
	##
	# Initialization method for the +Session+ class.
	# Params:
	# +name+:: the name of the session
	def initialize(name)
		@name = []
		@sport = []
		@info = []
		@average_heart_rate = []
		@total_duration = []
	end

	##
	# Building a new Sport object.
	# Params:
	# +type+:: the type of the sport
	def sport(type)
		@sport << Sport.new(type)
	end

	##
	# Building a new Info object.
	# Params:
	# +message+:: the info message
	def info(message)
		@info << Info.new(message)
	end

	##
	# Building a new AverageHeartRate object.
	# Params:
	# +heart_rate+:: the average heart rate in bpm
	def average_heart_rate(heart_rate)
		@average_heart_rate << AverageHeartRate.new(heart_rate)
	end

	##
	# Building a new TotalDuration object.
	# Params:
	# +duration+:: the duration in seconds
	def total_duration(duration)
		@total_duration << TotalDuration.new(duration)
	end

	##
	# Converting a session to a string.
	def to_s
		str = "#{@sport[0].type} #{@info[0].message}"
	end

	##
	# Converting a session to a JSON-ized string.
	def to_hash
		session_json = {
			name:        		 @name.collect			      { |x| x.to_hash },
			sport:				 @sport.collect 			  { |x| x.to_hash },
			info:				 @info.collect  			  { |x| x.to_hash },
			average_heart_rate:  @average_heart_rate.collect  { |x| x.to_hash },
			total_duration:      @total_duration.collect      { |x| x.to_hash },
		}
	end
end