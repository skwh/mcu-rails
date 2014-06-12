class UpdateRankInUser < ActiveRecord::Migration
  def change
  	change_column :users, :rank, :string, :default => "Cadet"
  end
end
