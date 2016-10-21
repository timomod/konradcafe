require "date"


module EventsHelper

  # Changes numerical month used in DB Model into 3 first letters of the month
  def square_month(month_number)
      months = %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)
      months[month_number - 1]
  end

  # Checks if current day matches the weekday in the curry menu calendar
  def weekday_check(day)
    Date.today.strftime("%A").downcase == day.downcase
  end

  # Codence Event-model date info into one string
  def weekday_through_year(event)
    "#{event.weekday} #{event.day}.#{event.month}.#{event.year}"
  end
  #Condence Event-model date and time info into one string
  def weekday_through_time(event)
    "#{event.weekday} #{event.day}.#{event.month}.#{event.year}, #{event.start} - #{event.end}"
  end




end


