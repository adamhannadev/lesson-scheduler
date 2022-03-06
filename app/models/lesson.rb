class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  
  has_rich_text :plan
  validates :start_time, presence: true

  before_save :create_default_ending

  def duration
    difference = ((self.end_time - self.start_time) / 1.hour).round(2)
   end
  private

 

  def create_default_ending
    if self.end_time.blank?
      self.end_time = self.start_time + 1.hour
    end
  end
end
