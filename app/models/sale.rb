class Sale < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	belongs_to :package
	# Validation
	validates :transaction_id, :presence => true, :uniqueness => true, :numericality => true, :inclusion => 5000..5999
	validates :customer_id, :presence => true, :numericality => true
	validates :package_id, :presence => true, :numericality => true
	# Scopes
	scope :with_package, lambda {|packageVar| where(:package_id => packageVar )}
	scope :with_customer, lambda {|customerVar| where(:customer_id => customerVar )}
end