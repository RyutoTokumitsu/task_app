class AddMemoryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :memory, :string
  end
end
