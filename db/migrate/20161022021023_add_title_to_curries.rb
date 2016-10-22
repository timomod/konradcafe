class AddTitleToCurries < ActiveRecord::Migration
  def change
    add_column :curries, :title, :string
  end
end
