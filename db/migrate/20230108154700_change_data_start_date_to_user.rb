class ChangeDataStartDateToUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :start_date, :datetime
  end
end
