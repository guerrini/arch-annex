class Fms::Algorithm::Response < ActiveRecord::Base
	belongs_to :algorithm
	has_many :steps, :class_name => 'Fms::Algorithm::ResponseStep', :dependent => :destroy
	extend Fms::Extensions
	attr_accessible :is_enabled, :priority
	has_extensions :enables, :disables, :mucks_with
end