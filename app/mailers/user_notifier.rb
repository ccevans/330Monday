class UserNotifier < ApplicationMailer
	default :from => 'admin@capsulely.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_image_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for with Capsulely' )
  end

end