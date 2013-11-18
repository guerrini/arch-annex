class Fms::Algorithm::Detection < ActiveRecord::Base
	belongs_to :algorithm
	has_many :steps, :class_name => 'Fms::Algorithm::DetectionStep', :dependent => :destroy
	extend Fms::Extensions
	attr_accessible :frequency_category, :frequency, :indications_to_verify_fault, :checks_until_reset, :is_enabled, :record_history, :alert_ground_on_detection, :alert_ground_on_verification
end