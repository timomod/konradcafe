class AddDatesToCurries < ActiveRecord::Migration
  def change
    add_column :curries, :date, :string
  end
end
