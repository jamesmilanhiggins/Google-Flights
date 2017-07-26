class CreateUserFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :user_flights do |t|

      t.column :price, :string
      t.column :departureTime, :string
      t.column :arribalTime, :string
      t.column :mileage, :string
      t.column :airlineNumber, :string
      t.column :airlineCarrier, :string
      t.column :time, :string
      t.column :stops, :string
      t.column :user_id, :integer

      t.timestamp

    end
  end
end
