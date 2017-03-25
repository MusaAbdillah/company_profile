class CreateGaleries < ActiveRecord::Migration
  	def self.up
    	create_table :galeries do |t|
    		t.string :image
      		t.text :description
      		t.references :company, index: true, foreign_key: true

      		t.timestamps null: false
    	end
  	end

  	def self.down
  		drop_table :galeries
  	end
end
