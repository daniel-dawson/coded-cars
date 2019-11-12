class Owner < ApplicationRecord
  has_many :ownership_histories, dependent: :delete_all
  has_many :cars, through: :ownership_histories
end
