class Fms::Algorithm::DetectionStep < ActiveRecord::Base
	belongs_to :detection, :class_name => 'Fms::Algorithm::Detection'
	extend Fms::Extensions
	attr_accessible :order, :title, :category, :mnemonic, :threshold_high, :threshold_low, :description
end