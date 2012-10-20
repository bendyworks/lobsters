class EmailReply < ActionMailer::Base
  default :from => "contact@makemadison.com"

  def reply(comment, user)
    @comment = comment 
    @user = user

    mail(:to => user.email, :from => "MakeMadison <contact@makemadison.com>",
      :subject => "[MakeMadison] Reply from #{comment.user.username} on " <<
      "#{comment.story.title}")
  end

  def mention(comment, user)
    @comment = comment 
    @user = user

    mail(:to => user.email, :from => "MakeMadison <contact@makemadison.com>",
      :subject => "[MakeMadison] Mention from #{comment.user.username} on " <<
      "#{comment.story.title}")
  end
end
