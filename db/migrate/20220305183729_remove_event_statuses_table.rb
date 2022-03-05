class RemoveEventStatusesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :event_statuses
  end
end
