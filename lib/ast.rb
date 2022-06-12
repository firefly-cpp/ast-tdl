require 'json'

require_relative 'classes'
require_relative 'interval'
require_relative 'session'


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

		def json
			training_json = {
				name:      @name,
				session:   @session.collect  { |x| x.to_hash },
				interval:  @interval.collect { |x| x.to_hash },
			}
			training_json.to_json
		end

		def save_to_file(filename)
			f = File.open(filename, "w")
			f.puts(json)
			f.close
		end
	end 
end
