class Event < ApplicationRecord
    belongs_to :admin, class_name: "User"
    has_many :attendances
    has_many :stripe_customers, through: :attendances, source: :user
  
    validates :start_date, presence: true
    validate :start_date_cannot_be_in_the_past
    validates :duration, presence: true, numericality: {only_integer: true, greater_than: 0}
    validate :duration_multiple_of_five
    validates :title, presence: true, length: {minimum: 5, maximum: 140}
    validates :description, presence: true, length: {minimum: 20, maximum: 1000}
    validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000}
    validates :location, presence: true
  
    def start_date_cannot_be_in_the_past
      errors.add(:start_date, "Veuillez sélectionner une date à venir.") if start_date.present? && start_date < Date.today
    end
  
    def duration_multiple_of_five
      errors.add(:duration, 'must be a multiple of 5') unless duration % 5 == 0
    end
end
