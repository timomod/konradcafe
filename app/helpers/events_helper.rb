require "date"


module EventsHelper

  # Changes numerical month used in DB Model into 3 first letters of the month
  def square_month(month_number)
      months = %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)
      months[month_number - 1]
  end

  # Checks if current day matches the weekday in the curry menu calendar
  def weekday_check(day)
    if
      Date.today.strftime("%A").downcase == day.downcase
      "bg-red-text-white"
    end
  end

  # Codence Event-model date info into one string
  def weekday_through_year(event)
    "#{event.weekday} #{event.day}.#{event.month}.#{event.year}"
  end
  #Condence Event-model date and time info into one string
  def weekday_through_time(event)
    "#{event.weekday} #{event.day}.#{event.month}.#{event.year}, #{event.start} - #{event.end}"
  end


  def opening_times
      #Weekdays   Sun-0     Mon-1    Tues-2    Wed-3  Thu-4   Fri-5   Sat-6
      schedule = [[11,24],[11,24],[11,24],[11,24],[11,24],[11,01],[10,01]]
      day_num = Date.today.strftime("%w").to_i
      day_time = Date.today.strftime("%H").to_i

      today = schedule[day_num]
      return  "Open Today: #{'%.2f' % today[0]} - #{'%.2f' % today[1]}"
  end









      # #checks the closing hour in Array is Not past midnight(i.e. that it IS later than 5 am)
      # #and checks opening times is between opening an closing time
      # if (schedule[day_time][2] > 5) && ( (day_time >= schedule[day_num][1]) && (day_time <= schedule[day_num][2])
      #     # Use the day number to get right Array data
      #     today = schedule[day_num]
      #     "Open Today: #{ '%.2f' % today[1]} - "
      # end















end


