class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :invited
      t.string :attending

      t.timestamps
    end
  end
end
