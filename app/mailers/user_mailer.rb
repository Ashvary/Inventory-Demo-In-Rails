class UserMailer < ApplicationMailer

	def welcome_user(user)
	@user = user
	@url = "http://localhost:3000"
	mail( to: @user.email , subject: "Thanks for Registering on 'Your Website'")
	end

end
