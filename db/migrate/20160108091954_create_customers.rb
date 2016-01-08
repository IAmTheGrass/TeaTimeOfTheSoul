class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :company_name
    	t.integer :customer_id
    	t.integer :sales_number
    	t.integer :sales_total
    	t.integer :sales_dev 
		t.timestamps
    end
  end
end
