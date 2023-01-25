class ChangeDataEndDateToUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :end_date, :datetime
  end
end
