class CreateAlgorithms < ActiveRecord::Migration
	def change
		create_table :algorithms do |t|
			t.string :name
			t.string :identifier
			t.string :title
			t.string :type
			t.string :subtype
			t.string :category
			t.string :fault_class
			t.string :mission_phase
			t.text :description
      	t.text :extensions

      	t.timestamps
   	end


	   create_table :algorithm_detections do |t|
	   	t.belongs_to :algorithm
	   	t.string :type
	   	t.string :frequency_category
	   	t.integer :frequency
	      t.integer :indications_to_verify_fault
	      t.integer :checks_until_reset
	      t.boolean :is_enabled
	      t.boolean :record_history
	      t.boolean :alert_ground_on_detection
	      t.boolean :alert_ground_on_verification
	   	t.text :extensions

	   end


	   create_table :algorithm_responses do |t|
	   	t.belongs_to :algorithm
	   	t.string :type
	      t.boolean :is_enabled
	      t.integer :priority
	   	t.text :extensions
	   end


	   create_table :algorithm_detection_steps do |t|
	   	t.belongs_to :detection
	   	t.string :type
	   	t.integer :order
	   	t.string :title
	   	t.string :category      
	   	t.string :mnemonic
	   	t.string :threshold_high
	   	t.string :threshold_low
	   	t.text :description
	   	t.text :extensions
	   end


	   create_table :algorithm_response_steps do |t|
	   	t.belongs_to :response
	   	t.string :type
	   	t.integer :order
	   	t.string :title
	   	t.string :category
	   	t.integer :execution_delay
	   	t.integer :execution_time
	   	t.string :command
	   	t.string :opcode
	   	t.text :parameters
	   	t.text :description
	   	t.text :extensions
	   end


	   create_table :algorithm_source_texts do |t|
	   	t.belongs_to :algorithm

	   	t.string :type
	   	t.text :content
	   	t.string :checksum
	   	t.text :filename
	   	t.text :extensions
	   end
	end
end
