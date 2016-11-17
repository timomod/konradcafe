class AddPublishToCurries < ActiveRecord::Migration
  def self.up
    add_column :curries, :publish, :boolean, :default => false, :null => false
    add_index  :curries, :publish
  end

  def self.down
    remove_index  :curries, :publish
    remove_column :curries, :publish
  end


end
