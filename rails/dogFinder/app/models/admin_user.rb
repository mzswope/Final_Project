class AdminUser < ActiveRecord::Base
	has_secure_password
	has_one :shelter

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	FORBIDDEN_USERNAMES = ['littlebopeep','humptydumpty','marymary']

	 
	validates :first_name, :presence => true,
	                       :length => { :maximum => 25 }
	validates :last_name, :presence => true,
	                      :length => { :maximum => 50 }
	validates :shelter_name, :presence => true,
	                         :length => { :maximum => 70 }
	validates :username, :length => { :within => 8..25 },
	                     :uniqueness => true
	validates :email, :presence => true,
	                  :length => { :maximum => 100 },
	                  :format => EMAIL_REGEX,
	                  :confirmation => true

  def name
    "#{first_name} #{last_name}"
  end
end
