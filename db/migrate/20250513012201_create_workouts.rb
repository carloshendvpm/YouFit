class CreateWorkouts < ActiveRecord::Migration[8.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :created_by, null: false, foreign_key: true
      t.references :assigned_to, null: false, foreign_key: true

      t.timestamps
    end
  end
end
