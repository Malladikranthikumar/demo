class Product < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  	t.string :brand_name
  	t.integer :quantity
  	t.text :description
    end
  end
end
