class Service < ApplicationRecord
  belongs_to :category
  belongs_to :freelancer_user_profile
end
