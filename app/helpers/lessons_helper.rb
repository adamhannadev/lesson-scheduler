module LessonsHelper
    def simple_time(time)
        return time.strftime("%a, %b %d - %I:%M %p")
    end
end
