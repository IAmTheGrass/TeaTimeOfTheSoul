class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
    	t.integer :transaction_id
    	t.integer :customer_id
    	t.integer :package_id
      	t.timestamps
    end
  end
end
