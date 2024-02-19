class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user

  after_create :send_reservation_confirmation

  def send_reservation_confirmation
    EventMailer.participation_email(@event.user, user).deliver_now
  end

end
