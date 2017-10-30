class Followers < ActiveRecord::Migration[5.1]
  def change
  	create_table :followers, id: false do |t|
        t.integer :user_id
        t.integer :follower_user_id
      end

		add_index(:followers, [:user_id, :follower_user_id], :unique => true)
  end

end
