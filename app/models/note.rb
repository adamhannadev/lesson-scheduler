class Note < ApplicationRecord
  belongs_to :teacher, optional: true
  belongs_to :student, optional: true
  belongs_to :lesson, optional: true
  belongs_to :event, optional: true
end
