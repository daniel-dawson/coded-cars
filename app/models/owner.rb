class Owner < ApplicationRecord
  has_many :ownership_histories
  has_many :cars, through: :ownership_histories
  belongs_to :admin
end
