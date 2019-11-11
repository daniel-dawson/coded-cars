class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :owners
  has_many :ownership_histories
  has_many :cars
end
