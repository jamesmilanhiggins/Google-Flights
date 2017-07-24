class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.column :name, :string

      t.timestamp
    end
  end
end
