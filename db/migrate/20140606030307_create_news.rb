class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :text
      t.belongs_to :user

      t.timestamps
    end
  end
end
