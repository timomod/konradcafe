class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :subtitle
      t.text :body

      t.timestamps null: false
    end
  end
end
