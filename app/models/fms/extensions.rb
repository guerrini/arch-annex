module Fms::Extensions
	def has_extensions(*keys)
		# Use ActiveRecord callback to initialize extensions hash after initialization of instance
		class_eval do
			after_initialize :initialize_extensions
			serialize :extensions
		end

		keys.each do |extension_key|
			define_method("extension_#{extension_key}".to_sym) do
				self.extensions[extension_key.to_sym]
			end


			define_method("extension_#{extension_key}=".to_sym) do |newval| 
				self.extensions[extension_key.to_sym] = newval
			end


			define_method(:installed_extensions) do
				keys.inspect
			end


			define_method(:initialize_extensions) do
				if self.extensions.nil?
					begin
						super()  # Initialize extensions for first ancestor that supports extensions--"recursive"!
					rescue NoMethodError
					ensure
						self.extensions = (self.extensions || {}).merge( Hash[keys.zip []] )
					end
				end
			end
		end
	end
end

