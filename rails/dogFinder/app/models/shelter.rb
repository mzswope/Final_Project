class Shelter < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "250x200>", :thumb => "100x100>" }, :default_url => ""
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	has_many :dogs
end
