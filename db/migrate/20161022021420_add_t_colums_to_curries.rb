class AddTColumsToCurries < ActiveRecord::Migration
  def change
    add_column :curries, :monday, :string
    add_column :curries, :tuesday, :string
    add_column :curries, :wednesday, :string
    add_column :curries, :thursday, :string
    add_column :curries, :friday, :string
    add_column :curries, :curry1, :string
    add_column :curries, :curry2, :string
    add_column :curries, :curry3, :string
    add_column :curries, :curry4, :string
    add_column :curries, :curry5, :string
  end
end
