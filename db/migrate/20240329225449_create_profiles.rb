class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.references :account, index: {:unique=>true}, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
