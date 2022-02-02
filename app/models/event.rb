class Event < ApplicationRecord
    before_create do
        if self.event_end.blank?
        self.event_end = self.event_start + 1.hour
        end
    end

end
