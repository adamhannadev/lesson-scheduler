# Preview all emails at http://localhost:3000/rails/mailers/lessons_mailer
class LessonsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/lessons_mailer/reminder
  def reminder
    LessonsMailer.with(lesson: Lesson.first, student: Student.first).reminder
  end

  # Preview this email at http://localhost:3000/rails/mailers/lessons_mailer/cancellation
  def cancellation
    LessonsMailer.cancellation
  end

end
