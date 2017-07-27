class UpdateSavedFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :user_flights, :origin, :string
    add_column :user_flights, :destination, :string
  end
end
