class Programs::Template::Conversion::AlgorithmParser < Conversion::Parser
	attr_accessor :algorithm

	def initialize(filepath)
		super(filepath)
		@algorithm = Fms::Algorithm.new
	end


	def parsable?
		if false 
			@errors << "File is wrong type"
		end
		@errors.empty? 
	end
  
  

	def extract(saveit = true, force = false)
		if parsable?
			@algorithm = Fms::Algorithm.new
			# Delegate extracting specific portions to private methods
			@algorithm
		else
			nil
		end
	end


	private
		# Define methods to extract specific portions
end
