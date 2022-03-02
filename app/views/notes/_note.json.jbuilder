json.extract! note, :id, :body, :teacher_id, :student_id, :lesson_id, :event_id, :created_at, :updated_at
json.url note_url(note, format: :json)
