class UpdateFlightsWithUserId < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :user_id, :integer
  end
end
