class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, :authorize_admin
  # GET /lessons or /lessons.json
  def index
    if params[:teacher]
      @teacher = params[:teacher]
      @lessons = Lesson.where("start_time >= ? and start_time <= ? and cast(teacher_id as integer) == ?",  Time.now.beginning_of_month, Time.now.end_of_month, @teacher)
  else
    @lessons = Lesson.where("start_time >= ? and start_time <= ?",  Time.now.beginning_of_month, Time.now.end_of_month)
  end
  end

  # GET /lessons/1 or /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
  end
  
  def week
    @lessons = Lesson.all
    @teachers = Teacher.all
  end
  
  def month
    @lessons = Lesson.all
    @teachers = Teacher.all
  end

  def remind
    @lesson = Lesson.find(params[:id])
    LessonsMailer.with(lesson: @lesson, student: @lesson.student_id).reminder.deliver_now
  end

  # POST /lessons or /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to lesson_url(@lesson), notice: "Lesson was successfully created." }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1 or /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to lesson_url(@lesson), notice: "Lesson was successfully updated." }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1 or /lessons/1.json
  def destroy
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to lessons_url, notice: "Lesson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_params
      params.require(:lesson).permit(:start_time, :end_time, :student_id, :teacher_id, :plan)
    end
end
