class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :age
      t.string :size
      t.string :gender
      t.string :people
      t.string :kids
      t.string :other_dogs

      t.timestamps null: false
    end
  end
end
