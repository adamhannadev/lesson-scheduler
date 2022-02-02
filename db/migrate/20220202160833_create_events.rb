class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :event_start
      t.datetime :event_end
      t.text :description

      t.timestamps
    end
  end
end
