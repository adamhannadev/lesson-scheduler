class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.references :teacher, null: true, foreign_key: true
      t.references :student, null: true, foreign_key: true
      t.references :lesson, null: true, foreign_key: true
      t.references :event, null: true, foreign_key: true

      t.timestamps
    end
  end
end
