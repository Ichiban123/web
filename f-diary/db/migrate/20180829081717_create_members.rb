class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :id
      t.string :password
      t.string :food
      t.integer :calorie
      t.date :date
      t.string :bld

      t.timestamps null: false
    end
  end
end
