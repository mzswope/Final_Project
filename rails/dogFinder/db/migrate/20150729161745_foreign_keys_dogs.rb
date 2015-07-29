class ForeignKeysDogs < ActiveRecord::Migration
  def change
  	add_index :dogs, :gender
  	add_index :dogs, :size
  	add_index :dogs, :age
  	add_index :dogs, :breed
  end
end
