class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user

  after_create :send_admin_confirmation, :send_user_confirmation
  validates :user_id, uniqueness: { scope: :event_id }
  
  def send_admin_confirmation
    # To send an email to the admin
    EventMailer.participation_email(self.event.admin).deliver_now
  end

  def send_user_confirmation
    # To send an email to the participant
    EventMailer.subscription_email(self.user).deliver_now
  end

end
