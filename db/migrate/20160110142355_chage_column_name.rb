class ChageColumnName < ActiveRecord::Migration
  def change
  	rename_column :packages, :package_product_id, :product_id
  end
end
