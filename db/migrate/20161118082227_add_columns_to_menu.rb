class AddColumnsToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :position, :integer
    add_column :menus, :menu_icon, :string
  end
end
