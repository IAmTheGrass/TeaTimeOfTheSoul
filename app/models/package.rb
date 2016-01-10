class Package < ActiveRecord::Base
	belongs_to :product
	has_many :sales
end