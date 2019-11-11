class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :owners
  has_many :ownership_histories, through: :owners
  has_many :cars, through: :owners
end
