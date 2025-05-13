class CreateWorkoutDays < ActiveRecord::Migration[8.0]
  def change
    create_table :workout_days do |t|
      t.references :workout, null: false, foreign_key: true
      t.integer :weekday

      t.timestamps
    end
  end
end
