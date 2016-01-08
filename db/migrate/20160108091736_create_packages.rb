class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
    	t.integer :package_id
    	t.integer :package_product_id
    	t.integer :cost
    	t.integer :sales_number
    	t.integer :sales_total
      	t.timestamps
    end
  end
end
