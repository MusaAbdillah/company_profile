class CreateActivities < ActiveRecord::Migration
  	def self.up
	    create_table :activities do |t|
	      t.string :image
	      t.string :title
	      t.text :description
	      t.references :company, index: true, foreign_key: true

	      t.timestamps null: false
    	end
  	end

  	def self.down
  		drop_table :activities
  	end
end
