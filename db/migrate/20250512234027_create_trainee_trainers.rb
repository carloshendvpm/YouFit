class CreateTraineeTrainers < ActiveRecord::Migration[8.0]
  def change
    create_table :trainee_trainers do |t|
      t.references :trainee, null: false, foreign_key: { to_table: :users }
      t.references :trainer, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
