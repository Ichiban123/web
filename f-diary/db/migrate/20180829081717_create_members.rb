class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :food
      t.intege :calorie
      t.date :date
      t.string :bld

      t.timestamps null: false
    end
  end
end
