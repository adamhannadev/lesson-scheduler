class PagesController < ApplicationController
    before_action :authenticate_user!, :authorize_admin, only: "admin"

    def home
    end

    def admin
    end

    def export
        @lessons = Lesson.order(:start_time, teacher_id: :desc)
        @students = Student.all
        @teachers = Teacher.all
        @users = User.all
        @date = Time.current
        respond_to do |format|
          format.xlsx {
            response.headers[
              'Content-Disposition'
            ] = "attachment; filename=AHBDSChedulerExport-#{@date}.xlsx"
          }
        end
    end
end