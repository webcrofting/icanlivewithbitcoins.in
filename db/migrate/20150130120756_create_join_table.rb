class CreateJoinTable < ActiveRecord::Migration
  def change
  	  create_table :bbusinesses_categories, id: false do |t|
      t.integer :bbusiness_id
      t.integer :category_id
    end
    add_index :bbusinesses_categories, :bbusiness_id
    add_index :bbusinesses_categories, :category_id
  end
end
