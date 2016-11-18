class AddHeaderAndSpecialToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :header, :boolean, :default => false, :null => false
    add_column :menus, :special, :boolean, :default => false, :null => false
  end
end
