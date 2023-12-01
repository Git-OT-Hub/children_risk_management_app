class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :role, null: false, default: 0

      t.timestamps
      t.index :email, unique: true
    end
  end
end
