class EventMailer < ApplicationMailer
  def participation_email(event_host)
    @event_host = event.admin
    # @url = 'http://localhost:3000/login' => modifier le lien de l'url pour renvoyer sur la page de l'event
    mail(to: @event_host.email, subject: 'Nouvelle inscription')
  end
end
