class CreateOwnershipHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :ownership_histories do |t|
      t.belongs_to :owner
      t.belongs_to :car
      t.belongs_to :admin

      t.timestamps
    end
  end
end
