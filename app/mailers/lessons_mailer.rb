class LessonsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lessons_mailer.reminder.subject
  #
  def reminder
    @lesson = params[:lesson]
    @student = @lesson.student
    @greeting = "Hello " + @student.first_name
    
    mail to: @student.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lessons_mailer.cancellation.subject
  #
  def cancellation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
