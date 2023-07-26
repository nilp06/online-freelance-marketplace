class BankDetail < ApplicationRecord
  belongs_to :accountable, polymorphic: true
end
