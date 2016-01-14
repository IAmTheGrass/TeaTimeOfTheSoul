class Package < ActiveRecord::Base
	# Relationships
	belongs_to :product
	has_many :sales
	has_many :customers, through: :sales
	# Validations
	validates :package_id, :presence => true, :uniqueness => true, :numericality => true, :inclusion => 3000..3999
	validates :product_id, :presence => true, :numericality => true
	validates :cost, :presence => true, :numericality => true
	# Scopes
	scope :with_product, lambda {|productVar| where(:product_id => productVar )}
end