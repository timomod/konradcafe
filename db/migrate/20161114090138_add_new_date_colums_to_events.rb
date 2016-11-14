class AddNewDateColumsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :end_date, :date
    add_column :events, :start_display, :date
    add_column :events, :end_display, :date

  end
end
