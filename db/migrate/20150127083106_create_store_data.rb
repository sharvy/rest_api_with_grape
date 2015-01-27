class CreateStoreData < ActiveRecord::Migration
  def change
    create_table :store_data do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :url

      t.timestamps null: false
    end
  end
end
