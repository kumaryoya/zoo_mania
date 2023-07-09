class CreateFavoriteZoos < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_zoos do |t|
      t.belongs_to :user, index: true
      t.belongs_to :zoo, index: true
      t.integer :rank
      t.timestamps
    end
  end
end
