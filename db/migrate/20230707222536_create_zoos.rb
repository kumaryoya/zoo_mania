class CreateZoos < ActiveRecord::Migration[7.0]
  def change
    create_table :zoos do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :area, null: false
      t.string :link, null: false
      t.timestamps
    end
    add_index :zoos, :name, unique: true
    add_index :zoos, :location, unique: true
    add_index :zoos, :link, unique: true
  end
end
