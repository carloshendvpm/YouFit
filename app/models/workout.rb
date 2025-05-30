class Workout < ApplicationRecord
  belongs_to :created_by, class_name: "User"
  belongs_to :assigned_to, class_name: "User", optional: true
  has_many :workout_days, dependent: :destroy
end
