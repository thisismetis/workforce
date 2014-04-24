class InviteMailer < ActionMailer::Base
  default from: "invite@dundermifflin.com"

  def invite_email(email)
    mail(to: email, subject: 'Welcome to the Dunder Mifflin Family!')
  end

end
