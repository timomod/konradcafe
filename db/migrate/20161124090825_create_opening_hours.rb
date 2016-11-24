class CreateOpeningHours < ActiveRecord::Migration
  def change
    create_table :opening_hours do |t|
      t.time :open_from
      t.time :open_to
      t.string :title
      t.string :subtitle

      t.timestamps null: false
    end
  end
end
