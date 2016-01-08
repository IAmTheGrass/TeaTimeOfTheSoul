class Package < ActiveRecord::Base
	has_one :product
	has_many :sales
	has_many :customers, :through => :sales
end