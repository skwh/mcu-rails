class AddFireteamIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fireteam_id, :integer
  end
end
