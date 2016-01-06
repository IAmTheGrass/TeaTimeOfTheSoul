class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :myimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
