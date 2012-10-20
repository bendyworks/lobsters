class EmailMessage < ActionMailer::Base
  default :from => "contact@makemadison.com"

  def notify(message, user)
    @message = message
    @user = user

    mail(:to => user.email, :from => "MakeMadison <contact@makemadison.com>",
      :subject => "[MakeMadison] Private Message from " <<
        "#{message.author.username}: #{message.subject}")
  end
end
