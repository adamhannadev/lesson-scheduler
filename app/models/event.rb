class Event < ApplicationRecord
    before_create do
        self.event_end = self.event_start + 1.hour
    end

end
