class Dog < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "250x200>", :thumb => "170x140>" }, :default_url => ""
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	
	belongs_to :shelter
end
