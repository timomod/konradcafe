class RemoveWeekdayFromCurries < ActiveRecord::Migration
  def change
    remove_column :curries, :weekday, :string
  end
end
