module LessonsHelper
    def simple_datetime(time)
        return time.strftime("%a, %b %d - %I:%M %p")
    end
    def simple_time(time)
        return time.strftime("%I:%M %p")
    end
end
