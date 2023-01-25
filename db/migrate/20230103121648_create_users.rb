class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.date :all_day
      t.string :confirm

      t.timestamps
    end
  end
end
