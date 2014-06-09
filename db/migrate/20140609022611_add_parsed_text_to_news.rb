class AddParsedTextToNews < ActiveRecord::Migration
  def change
  	add_column :news, :parsed_text, :text, default: ""
  end
end
