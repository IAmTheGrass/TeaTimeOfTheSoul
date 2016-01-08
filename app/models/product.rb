class Product < ActiveRecord::Base
	has_many :packages
	has_many :sales, :through => :packages
	has_many :customers, :through => :sales
end
