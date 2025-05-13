class AddTrainerToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :trainer, null: false, foreign_key: { to_table: :users }
  end
end
