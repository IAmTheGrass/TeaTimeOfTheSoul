class Customer < ActiveRecord::Base
	has_many :sales
	has_many :packages, through: :sales
	has_many :products, through: :packages
end
