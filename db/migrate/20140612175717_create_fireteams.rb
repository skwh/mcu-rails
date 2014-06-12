class CreateFireteams < ActiveRecord::Migration
  def change
    create_table :fireteams do |t|
      t.string :name
      t.string :insignia_url
      t.belongs_to :squad

      t.timestamps
    end
  end
end
