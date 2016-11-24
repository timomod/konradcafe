class AddOpeningHourToEvents < ActiveRecord::Migration
  def change
    add_column :events, :opening_hour, :time
  end
end
