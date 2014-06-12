class CreatePlatoons < ActiveRecord::Migration
  def change
    create_table :platoons do |t|
      t.string :name
      t.string :insignia_url

      t.timestamps
    end
  end
end
