class Package < ActiveRecord::Base
	# Relationships
	belongs_to :product
	has_many :sales
	has_many :customers, through: :sales
	# Validation
	validates :package_id, :presence => true,
						   :uniqueness => true
	validates :product_id, :presence => true
	validates :cost, :presence => true
end