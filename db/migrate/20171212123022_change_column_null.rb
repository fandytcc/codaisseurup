class ChangeColumnNull < ActiveRecord::Migration[5.1]
  def change
    change_column_null :events, :includes_food, false
    change_column_null :events, :includes_drinks, false
    change_column_null :events, :price, 0
    change_column_null :events, :active, true
  end
end
