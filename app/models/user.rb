class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, { trainee: 0, trainer: 1 }
  has_many :trainees, class_name: "User", foreign_key: "trainer_id", dependent: :destroy
  belongs_to :trainer, class_name: "User", optional: true
end
