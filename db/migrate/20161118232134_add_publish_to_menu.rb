class AddPublishToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :publish, :boolean, :default => false, :null => false
  end
end
