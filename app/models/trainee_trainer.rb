class TraineeTrainer < ApplicationRecord
  belongs_to :trainee, class_name: "User"
  belongs_to :trainer, class_name: "User"
end
