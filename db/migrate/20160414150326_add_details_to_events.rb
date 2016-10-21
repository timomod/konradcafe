class AddDetailsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :publish, :string
    add_column :events, :calendar_title, :string
    add_column :events, :calendar_body, :string
    add_column :events, :day, :string
    add_column :events, :month, :string
    add_column :events, :year, :string
    add_column :events, :start, :string
    add_column :events, :end, :string
    add_column :events, :address_one, :string
    add_column :events, :address_two, :string
    add_column :events, :postcode, :string
    add_column :events, :city, :string
    add_column :events, :weekday, :string
  end
end
