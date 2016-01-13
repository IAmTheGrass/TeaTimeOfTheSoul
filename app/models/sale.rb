class Sale < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	belongs_to :package
	# Validation
	validates :transaction_id, :presence => true,
							   :uniqueness => true
	validates :customer_id, :presence => true
	validates :package_id, :presence => true

	scope :with_package, lambda {|packageVar| where(:package_id => packageVar )}
end