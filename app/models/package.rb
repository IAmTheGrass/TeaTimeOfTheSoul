class Package < ActiveRecord::Base
	belongs_to :product
	has_many :sales
	has_many :customers, through: :sales
end