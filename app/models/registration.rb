class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  before_save :set_total_price

  def set_total_price
    total = self.event.price * guests_count
  end

  def set_status
    self.event.capacity =- guests_count
  end

end
