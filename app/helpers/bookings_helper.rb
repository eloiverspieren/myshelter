module BookingsHelper

  def available_days(refuge)
    days = []
    a = refuge.availabilities.each do |a|
      #start: a.start_day.strftime('%m/%d/%Y'), end: a.end_day.strftime('%m/%d/%Y')
      range = (a.start_day.to_date..a.end_day.to_date).to_a
      days += range.map { |d| d.strftime('%m/%d/%Y') }
    end
    days.to_json
  end

  def booking_days(refuge)
    bdays = []
    b = refuge.bookings.each do |b|
      range = (b.start_day.to_date..b.end_day.to_date).to_a
      bdays += range.map { |d| d.strftime('%m/%d/%Y') }
    end
    bdays
  end
end
