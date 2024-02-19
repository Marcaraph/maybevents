class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event
  has_many :hosted_events, foreign_key: 'admin_id', class_name: 'Event'

  validates :email, presence: true, uniqueness: true

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
