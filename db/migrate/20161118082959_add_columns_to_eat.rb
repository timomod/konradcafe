class AddColumnsToEat < ActiveRecord::Migration
  def change
    add_column :eats, :position, :integer
    add_column :eats, :menu_icon, :string
  end
end
