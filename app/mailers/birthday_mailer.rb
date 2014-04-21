class BirthdayMailer < ActionMailer::Base
  default from: "birthdays@DunderMifflin.com"

  def birthday_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

