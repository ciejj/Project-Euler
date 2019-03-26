require 'date'

module SundaysCoutner

    def self.count_sundays(start_date, end_date)
        start_date.upto(end_date).count { |d|  d if d.day == 1 && d.wday == 0}
    end
end

puts  SundaysCoutner.count_sundays(Date.new(1901, 1, 1), Date.new(2000, 12, 31))