class RemovePositionFromMenu < ActiveRecord::Migration
  def change
    remove_column :menus, :position, :integer
    remove_column :menus, :menu_icon, :string

  end
end
