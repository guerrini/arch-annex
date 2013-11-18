class Programs::Template::Models::Macro < Fms::Algorithm
	attr_accessor :algorithm
	has_extensions :foo, :bar

	def initialize()
		super()
	end
end