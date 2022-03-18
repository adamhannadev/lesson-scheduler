class Routine < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  def full_name
    self.level << ' ' << self.style << ' ' << self.dance
  end
end
