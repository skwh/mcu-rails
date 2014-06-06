class ChangeNewsTextTypetoText < ActiveRecord::Migration
  def change
  	change_column :news, :text, :text
  end
end
