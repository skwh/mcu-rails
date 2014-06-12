class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.string :insignia_url
      t.belongs_to :platoon

      t.timestamps
    end
  end
end
