class CreateCurries < ActiveRecord::Migration
  def change
    create_table :curries do |t|
      t.string :weekday
      t.string :description

      t.timestamps null: false
    end
  end
end
