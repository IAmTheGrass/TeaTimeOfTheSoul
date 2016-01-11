class Product < ActiveRecord::Base
	# Relationships
	has_many :packages
	has_many :sales, through: :packages
	has_many :customers, through: :sales
	# Validation
	validates :product_name, :presence => true,
					 :uniqueness => true
	validates :product_info, :presence => true
	validates :product_base_cost, :presence => true
end
