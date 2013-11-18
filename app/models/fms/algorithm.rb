class Fms::Algorithm < ActiveRecord::Base
	extend Fms::Extensions

	has_one :detection, :class_name => 'Fms::Algorithm::Detection', :dependent => :destroy 
	has_one :response, :class_name => 'Fms::Algorithm::Response', :dependent => :destroy 
	has_one :source_text, :class_name => 'Fms::Algorithm::SourceText', :dependent => :destroy   
	attr_accessible :identifier, :title, :subtype, :category, :fault_class, :mission_phase, :description
end


