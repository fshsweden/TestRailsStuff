class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :born

      t.timestamps
    end
  end
end
