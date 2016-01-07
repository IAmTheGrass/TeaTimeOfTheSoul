class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :myimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates :myimage, presence: true
	validates :description, presence: true
end
