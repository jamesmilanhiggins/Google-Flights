class UpdatedFlights < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :user_id
  end
end
