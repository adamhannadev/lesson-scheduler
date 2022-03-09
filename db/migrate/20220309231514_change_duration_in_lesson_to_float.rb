class ChangeDurationInLessonToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :lessons, :duration, :float
  end
end
