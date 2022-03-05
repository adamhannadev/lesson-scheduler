class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  has_many :notes
  has_rich_text :plan
  validates :start_time, presence: true

  before_save :create_default_ending

  def duration
    (self.end_time - self.start_time).minutes
   end
  private

 

  def create_default_ending
    if self.end_time.blank?
      self.end_time = self.start_time + 1.hour
    end
  end
end
