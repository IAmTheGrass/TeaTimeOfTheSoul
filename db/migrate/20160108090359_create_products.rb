class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :product_name
    	t.string :product_info
    	t.integer :product_base_cost
    	t.integer :sales_number
    	t.integer :sales_total
    	t.integer :sales_dev 
      	t.timestamps
    end
  end
end
