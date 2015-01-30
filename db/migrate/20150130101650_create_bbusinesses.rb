class CreateBbusinesses < ActiveRecord::Migration
  def change
    create_table :bbusinesses do |t|
      t.string :name
      t.string :address
      t.string :webpage
      t.string :string

      t.timestamps
    end
  end
end
