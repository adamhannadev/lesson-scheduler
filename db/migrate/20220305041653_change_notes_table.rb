class ChangeNotesTable < ActiveRecord::Migration[7.0]
  def change
    change_column :notes, :body, :rich_text
  end
end
