class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :item_number
      t.string :item_name
      t.string :item_type
    end
  end

end
