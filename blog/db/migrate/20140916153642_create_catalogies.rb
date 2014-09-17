class CreateCatalogies < ActiveRecord::Migration
  def change
    create_table :catalogies do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
