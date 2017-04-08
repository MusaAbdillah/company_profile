class AddQuoteToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :quote, :string
  end
end
