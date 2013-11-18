class Fms::Algorithm::SourceText < ActiveRecord::Base
	belongs_to :algorithm

	attr_accessible :content, :checksum  
end