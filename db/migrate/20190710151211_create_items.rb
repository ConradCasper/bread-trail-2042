class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :store, foreign_key: true
      t.string :name
      t.integer :cost
      t.string :location

      t.timestamps
    end
  end
end
