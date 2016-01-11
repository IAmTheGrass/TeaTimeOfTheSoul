class Customer < ActiveRecord::Base
	# Relationships
	has_many :sales
	has_many :packages, through: :sales
	has_many :products, through: :packages
	# Validation
	validates :name, :presence => true,
					 :uniqueness => true
	validates :company_name, :presence => true
	validates :customer_number, :presence => true,
								:uniqueness => true
end
