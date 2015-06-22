class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :veg
      t.boolean :going
      t.boolean :allday
      t.boolean :evening
      t.text :add_info

      t.timestamps null: false
    end
  end
end
