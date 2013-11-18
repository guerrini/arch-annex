class Programs::Template::Conversion::Factory
   def Factory.build(filepath)
     parser = AlgorithmParser.new(filepath)
     parser = AlgorithmParser.new(filepath) unless parser.parsable? # Second variation
     parser = nil unless parser.parsable?
     parser
   end
end