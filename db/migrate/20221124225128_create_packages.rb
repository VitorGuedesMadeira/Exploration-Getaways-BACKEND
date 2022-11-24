class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :title
      t.string :description
      t.string :destination
      t.decimal :price
      t.boolean :flight
      t.string :hotel

      t.timestamps
    end
  end
end
