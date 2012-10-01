class LocationsUsers < ActiveRecord::Migration
  def up
		create_table :locations_users do |t|
			t.integer :user_id
			t.integer :location_id
		end
  end

  def down
		drop_table :locations_users
  end
end
