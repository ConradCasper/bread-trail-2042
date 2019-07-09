class CreateSurvivors < ActiveRecord::Migration[5.2]
  def change
    create_table :survivors do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.integer :grain
      t.string :image_url
      t.timestamps
    end
  end
end
