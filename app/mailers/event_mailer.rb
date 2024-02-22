class EventMailer < ApplicationMailer
  default from: ENV['MAILJET_DEFAULT_FROM']
  
  def participation_email(event_host)
    @event_host = event_host
    mail(to: @event_host.email, subject: 'Nouvelle inscription')
  end

  def subscription_email(attendee)
    @attendee = attendee
    mail(to: @attendee.email, subject: "Confirmation d'inscription")
  end
end
