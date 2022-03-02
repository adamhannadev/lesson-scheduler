class Note < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :lesson
  belongs_to :event
end
