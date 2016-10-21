class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :title
      t.string :subtitle
      t.string :subtitle2
      t.text :body

      t.timestamps null: false
    end
  end
end
