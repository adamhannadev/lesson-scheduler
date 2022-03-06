class DropEventsPeopleTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :events_people
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
