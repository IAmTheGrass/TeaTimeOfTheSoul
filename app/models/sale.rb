class Sale < ActiveRecord::Base

	has_one :customer
	has_one :package
	has_one :product, :through => :package
end
