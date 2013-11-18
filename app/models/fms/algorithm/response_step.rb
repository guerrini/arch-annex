class Fms::Algorithm::ResponseStep < ActiveRecord::Base
	belongs_to :response, :class_name => 'Fms::Algorithm::Response'
	extend Fms::Extensions
	attr_accessible :order, :title, :category, :execution_delay, :execution_time, :command, :opcode, :parameters, :description
end