class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :text
      t.string :catalogy
      t.timestamps
    end
  end
end
