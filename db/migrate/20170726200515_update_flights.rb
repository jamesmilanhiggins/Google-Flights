class UpdateFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :price, :string
    add_column :flights, :departureTime, :string
    add_column :flights, :arribalTime, :string
    add_column :flights, :mileage, :string
    add_column :flights, :airlineNumber, :string
    add_column :flights, :airlineCarrier, :string
    add_column :flights, :time, :string
    add_column :flights, :stops, :string
  end
end
