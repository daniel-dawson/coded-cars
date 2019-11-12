class Car < ApplicationRecord
  has_many :ownership_histories, dependent: :delete_all
  has_many :owners, through: :ownership_histories


  # Owner setter and getter
  # Create database call for most recent Car owner
  def owner=(owner)
    @owner = Owner.all.sample
  end

  def owner
    @owner
  end


end
