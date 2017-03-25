class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.string :address
      t.string :phone
      t.string :link_one
      t.string :link_two
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :abouts
  end
end
