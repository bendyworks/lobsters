class InvitationMailer < ActionMailer::Base
  def invitation(invitation)
    @invitation = invitation

    mail(:to => invitation.email,
      :from => "MakeMadison Invitation <contact@makemadison.com>",
      subject: "[MakeMadison] Welcome to MakeMadison")
  end
end
