class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.text :description
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.string :song
      t.string :style
      t.string :level
      t.string :dance

      t.timestamps
    end
  end
end
