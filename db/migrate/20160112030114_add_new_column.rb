class AddNewColumn < ActiveRecord::Migration
  def change
  	add_column :packages, :product_id, :integer
  end
end
