class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation(journey)
    @journey = journey

    mail(
      to:       "lecoqtrotteur@gmail.com",
      subject:  "Votre réservation est confirmée !"
    )
  end
end
