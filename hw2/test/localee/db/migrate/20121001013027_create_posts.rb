class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
			t.string :text
      t.integer :user_id, :null=> false
      t.integer :location_id, :null=> false

      t.timestamps
    end
  end
end
