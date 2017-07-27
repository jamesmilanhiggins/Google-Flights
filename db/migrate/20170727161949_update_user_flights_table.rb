class UpdateUserFlightsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :user_flights, :mpd, :string
  end
end
