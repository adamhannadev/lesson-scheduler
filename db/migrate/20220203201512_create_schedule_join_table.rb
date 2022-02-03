class CreateScheduleJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :events, :people do |t|
      # t.index [:event_id, :person_id]
      # t.index [:person_id, :event_id]
    end
  end
end
