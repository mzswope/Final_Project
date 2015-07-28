class Dog < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "200x100>", :thumb => "100x100>" }, :default_url => ""
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	
	belongs_to :shelter
end
