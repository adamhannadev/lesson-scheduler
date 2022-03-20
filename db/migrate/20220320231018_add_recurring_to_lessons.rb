class AddRecurringToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :recurring, :text
  end
end
