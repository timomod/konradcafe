class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
      t.string :header
      t.string :subheader
      t.string :title
      t.string :subtitle
      t.text :body

      t.timestamps null: false
    end
  end
end
