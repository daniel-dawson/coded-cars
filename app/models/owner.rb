class Owner < ApplicationRecord
  has_many :ownership_histories, dependent: :delete
  has_many :cars, through: :ownership_histories
  belongs_to :admin
end
