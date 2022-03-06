class Teacher < ApplicationRecord
    has_many :lessons
    has_many :students
    

    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :email, uniqueness: true

    def full_name
        self.first_name << " " << self.last_name
  end
end
