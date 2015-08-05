class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Thank you for signing up your shelter.  You will have access to your account within the next 72 hours.')
  end
end
