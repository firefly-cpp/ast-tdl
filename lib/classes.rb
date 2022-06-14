require "json"


##
# This class represents a sport with a type.
class Sport
	# The type of a sport.
	attr_reader :type

	##
	# Initialization method for the +Sport+ class.
	# Params:
	# +type+:: the type of the sport
	def initialize(type)
		@type = type
	end

	##
	# Converting +Sport+ class to a hash.
	def to_hash
		sport_json = {
			type: @type
		}
	end
end


##
# This class represents information with a message.
class Info
	# The info message.
	attr_reader :message

	##
	# Initialization method for the +Info+ class.
	# Params:
	# +message+:: the info message
	def initialize(message)
		@message = message
	end

	##
	# Converting +Info+ class to a hash.
	def to_hash
		info_json = {
			message: @message
		}
	end
end


##
# This class represents an average heart rate.
class AverageHeartRate
	# An average heart rate.
	attr_reader :heart_rate

	##
	# Initialization method for the +AverageHeartRate+ class.
	# Params:
	# +heart_rate+:: the average heart rate
	def initialize(heart_rate)
		heart_rate = heart_rate.to_s.to_i
		if heart_rate > 220
			raise ArgumentError.new("Maximum heart rate is 220.")
		end

		@heart_rate = heart_rate
	end

	##
	# Converting +AverageHeartRate+ class to a hash.
	def to_hash
		info_json = {
			average_hr: @heart_rate
		}
	end
end


##
# This class represents a total duration of a session or an interval.
class TotalDuration
	# The total duration in seconds.
	attr_reader :duration

	##
	# Initialization method for the +TotalDuration+ class.
	# Params:
	# +duration+:: the total duration
	def initialize(duration)
		@duration = duration
    end

	##
	# Converting +TotalDuration+ class to a hash.
	def to_hash
		td_json = {
			duration: @duration
		}
	end
end


##
# This class represents an average heart rate in the resting period.
class AverageHeartRateRest
	# The average rest heart rate.
	attr_reader :average_heart_rate_rest

	##
	# Initialization method for the +AverageHeartRateRest+ class.
	# Params:
	# +average_heart_rate_rest+:: the average heart rate
	def initialize(average_heart_rate_rest)
		average_heart_rate_rest = average_heart_rate_rest.to_s.to_i
		if average_heart_rate_rest > 220
			raise ArgumentError.new("Maximum heart rate is 220.")
		end

		@average_heart_rate_rest = average_heart_rate_rest
	end

	##
	# Converting +AverageHeartRateRest+ class to a hash.
	def to_hash
		average_heart_rate_json = {
			average_heart_rate_rest: @average_heart_rate_rest
		}
	end
end


##
# This class represents a total duration of a session or an
# interval in the resting period.
class TotalDurationRest
	# The total duration in seconds.
	attr_reader :total_duration_rest

	##
	# Initialization method for the +TotalDurationRest+ class.
	# Params:
	# +total_duration_rest+:: the total rest duration
	def initialize(total_duration_rest)
		@total_duration_rest = total_duration_rest
	end

	##
	# Converting +TotalDurationRest+ class to a hash.
	def to_hash
		total_duration_rest_json = {
			total_duration_rest: @total_duration_rest
		}
	end
end