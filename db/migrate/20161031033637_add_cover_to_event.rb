class AddCoverToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :cover, :boolean, :default => false, :null => false
    add_index  :events, :cover
  end

  def self.down
    remove_index  :events, :cover
    remove_column :events, :cover
  end
end


