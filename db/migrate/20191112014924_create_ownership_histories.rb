class CreateOwnershipHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :ownership_histories do |t|
      t.belongs_to :owner, null: false, foreign_key: true
      t.belongs_to :car, null: false, foreign_key: true
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
