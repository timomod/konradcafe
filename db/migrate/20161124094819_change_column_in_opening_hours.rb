class ChangeColumnInOpeningHours < ActiveRecord::Migration
  def change
    remove_column :opening_hours, :open_from
    remove_column :opening_hours, :open_to
  end
  def change
    add_column :opening_hours, :open_at, :integer
    add_column :opening_hours, :open_until, :integer
  end

end
