json.extract! lesson, :id, :start_time, :end_time, :students_id, :teacher_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
