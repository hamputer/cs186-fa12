class LocationsUsers < ActiveRecord::Migration
	
  def up
		create_table :locations_users do |t|
			t.integer :user_id
			t.integer :location_id
		end

		add_index(:locations_users, [:user_id,:location_id], :unique => true)
  end

  def down
		drop_table :locations_users
  end
end
