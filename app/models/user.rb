class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, %i[freelancer client]
  validates :role, presence: true
  validates :user_name, presence: true
  validates :mobile_number, format: { with: /\A[5-9][0-9]{9}\Z/, message: 'is invalid.' }
end
