class CreateEventStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :event_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
