require "test_helper"

class LessonsMailerTest < ActionMailer::TestCase
  test "reminder" do
    mail = LessonsMailer.reminder
    assert_equal "Reminder", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "cancellation" do
    mail = LessonsMailer.cancellation
    assert_equal "Cancellation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
