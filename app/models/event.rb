class Event < ApplicationRecord
  #
  # EVENT_CATEGORIES = ["Food and Drink", "Travel", "Running", "Book club", "Personal Development", "Coding meet-ups", "Watching Movies", "Language & Culture"]

  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true, length: { maximum: 50 }
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :capacity, presence: true
  # validates :ends_after_start
  validates :starts_at, :ends_at, presence: true
  validates :categories, presence: true#, inclusion: { in: EVENT_CATEGORIES }
  validates_inclusion_of :includes_food, :in => [true, false]
  validates_inclusion_of :includes_drinks, :in => [true, false]

  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end

# private
#   def ends_after_start
#     return if ends_at.blank? || starts_at.blank?
#
#     if ends_at < starts_at
#       errors.add(:ends_at, "must be after the start date")
#     end
#   end

end
