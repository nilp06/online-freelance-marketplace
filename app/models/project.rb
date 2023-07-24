class Project < ApplicationRecord
  belongs_to :freelancer_user_profile
  has_one_attached :screenshot
end
