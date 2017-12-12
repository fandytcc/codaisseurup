class Event < ApplicationRecord

  EVENT_CATEGORIES = ["Food and Drink", "Travel", "Running", "Book club", "Personal Development", "Coding meet-ups", "Watching Movies", "Language & Culture"]

  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  # validates :ends_after_start
  validates :starts_at, :ends_at, presence: true
  validates :categories, inclusion: { in: EVENT_CATEGORIES }



# private
#   def ends_after_start
#     return if ends_at.blank? || starts_at.blank?
#
#     if ends_at < starts_at
#       errors.add(:ends_at, "must be after the start date")
#     end
#   end

end
