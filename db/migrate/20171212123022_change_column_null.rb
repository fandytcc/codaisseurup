class ChangeColumnNull < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:events, :includes_food, false)
    change_column_default(:events, :includes_drinks, false)
    change_column_default(:events, :price, 0)
    change_column_null(:events, :capacity, 0)
    change_column_null(:registrations, :guests_count, 0)
    change_column_default(:events, :active, true)
  end
end
