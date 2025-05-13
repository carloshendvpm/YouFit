class DropTraineeTrainersTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :trainee_trainers
  end
end
