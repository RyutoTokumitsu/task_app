class ChangeDataAllDayToUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :all_day, :boolean
  end
end
