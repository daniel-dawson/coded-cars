class OwnershipHistory < ApplicationRecord
  belongs_to :owner
  belongs_to :car
end
