class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user

  after_create :send_reservation_confirmation

  def send_reservation_confirmation
     #=> id evenement en question
     puts "00000000000000000000000000000"
    puts self
     EventMailer.participation_email(self.event.admin).deliver_now
  end

end
