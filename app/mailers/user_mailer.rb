class UserMailer < ApplicationMailer

  default from: 'naderabouezze93@gmail.com'

  def registration_confirmation(user)
    @user = user
    mail(to: user.email, subject: "registration confirmation")
  end
end
