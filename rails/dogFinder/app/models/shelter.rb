class Shelter < ActiveRecord::Base

    # require 'yelp'

    # client = Yelp::Client.new({ consumer_key: 758evkzvY8hmmvXw3YSi7Q,
    #                         consumer_secret: IAmFkDG1Qe011rMglJvkBWYJc_Q,
    #                         token: K6rjQtupyMqBAL_yHRobiu5cHQD1k8-m,
    #                         token_secret: 82tMJjIUEwzI_YoZsXjmjANPoXc
    #                       })

	has_attached_file :avatar, :styles => { :medium => "250x200>", :thumb => "100x100>" }, :default_url => ""
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    # has_secure_password

	has_many :dogs

	validates_presence_of :address, :city, :province, :website

    validates :name, :presence => true,
                        :length => { :maximum => 50 }
    # validates :username, :length => { :within => 8..25 },
    #                    :uniqueness => true
    
    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
    validates :email, :presence => true,
                    :length => { :maximum => 100 },
                    :format => EMAIL_REGEX,
                    :confirmation => true
end
