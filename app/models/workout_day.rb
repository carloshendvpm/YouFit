class WorkoutDay < ApplicationRecord
  belongs_to :workout
  enum :weekday, { sunday: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6 }
end
