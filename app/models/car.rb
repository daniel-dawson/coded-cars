class Car < ApplicationRecord
  has_many :ownership_histories, dependent: :delete_all
  has_many :owners, through: :ownership_histories
  belongs_to :admin
end
