class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :role
      t.string :gender

      t.timestamps null: false
    end
  end
end
