class RemoveBodyFromMenu < ActiveRecord::Migration
  def change
    remove_column :menus, :body, :text
  end
end
