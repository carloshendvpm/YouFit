class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, { trainee: 0, trainer: 1 }
  has_many :trainee_relationships, class_name: "TraineeTrainer", foreign_key: :trainee_id
  has_many :trainees, through: :trainee_relationships, source: :trainee
  has_one :trainer_relationships, class_name: "TraineeTrainer", foreign_key: :trainer_id
  has_one :trainer, through: :trainer_relationships, source: :trainer
end
