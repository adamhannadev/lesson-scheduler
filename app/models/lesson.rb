class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  serialize :recurring, Montrose::Recurrence

  validates :start_time, presence: true

  before_save :create_default_ending, :save_duration, :check_recurring 

  def duration
    difference = ((self.end_time - self.start_time) / 1.hour).round(2)
   end
  private

def check_recurring
  if self.recurring 
    self.recurring = Montrose.weekly.on(:monday).at("10:30 am")
  end
end

 def save_duration
  self.duration = duration
end

  def create_default_ending
    if self.end_time.blank?
      self.end_time = self.start_time + 1.hour
    end
  end
end
