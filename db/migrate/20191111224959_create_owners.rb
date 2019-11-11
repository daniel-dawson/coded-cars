class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
