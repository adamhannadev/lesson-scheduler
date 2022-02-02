require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "event_end saved as 1 hour later by default" do
    e = Event.new()
    e.event_start = Time.zone.now
    e.save()

    assert_equal e.event_end, e.event_start + 1.hour, "End time is not 1 hour after start time"
  end
end
