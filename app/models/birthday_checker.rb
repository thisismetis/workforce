class BirthdayChecker
  def initialize
    @users = User.all
  end

  def check
    @users.each do |user|
      if user.profile.birthday == Date.today
        BirthdayMailer.birthday_email(user).deliver
      end
    end
  end
end        
