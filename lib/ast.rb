require_relative 'classes'
require_relative 'session'
require_relative 'interval'

module Ast

	def self.build(name, &block)
		training = Training.new(name)
		training.instance_eval(&block)
		return training
	end
		class Training
		def initialize(name)
			@name = name
			@session = []
            @interval = []
		end
				def session(name, &block)
			training_type = Session.new(name)
			training_type.instance_eval(&block)
			@session << training_type
		end
        				def interval(name, &block)
			interval_data = Interval.new(name)
			interval_data.instance_eval(&block)
			@interval << interval_data
		end
				def to_s
			str = "#{@name} #{@session[0]}"
		end

	end 
end
