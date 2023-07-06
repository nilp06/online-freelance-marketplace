class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, %i[freelancer client]
  validates_presence_of %i[role user_name]
  validates :mobile_number, presence: true, uniqueness: true,
                            format: { with: /\A[5-9][0-9]{9}\Z/, message: 'is invalid.' }
end
