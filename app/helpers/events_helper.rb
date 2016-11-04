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
      #Weekdays   Sun-0   Mon-1    Tues-2    Wed-3  Thu-4   Fri-5   Sat-6
      schedule = [[11,24],[11,24],[11,24],[11,24],[11,24],[11,01],[10,01]]
      # Weekday number Sun - Sat => 0 - 6
      day_num = Date.today.strftime("%w").to_i
      # The current hour. Ex.: 17:43 => 17
      time_now = Time.now.strftime("%H").to_i

      # Extract todas's and yesterday's opening hours from schedule
      todays_schedule = schedule[day_num]
      yesterdays_schedule = schedule[day_num - 1]

      # Check if its after (more than) 5AM right_now && it the shop is open
      if time_now > 5 && (time_now >= todays_schedule[0] && time_now < todays_schedule[1])
        # FYI - '%.2f' transfroms a number into a 2 decimal float
          "Open now: #{'%.2f' % todays_schedule[0]} - #{'%.2f' % todays_schedule[1]}"
        # Elseif: Check closed past midnight YESTERDAY && if right_now is less than Closing time yesterday.
        elsif yesterdays_schedule[1] < 5 && time_now < yesterdays_schedule[1]
          "Open tonight until: #{'%.2f' % todays_schedule[1]} AM"
        # Else
        else
          "Closed now: #{'%.2f' % todays_schedule[0]} - #{'%.2f' % todays_schedule[1]}"
      end
   end


   def event_icon_helper(event_icon)
      icon = case event_icon
        when "music"
         "fa fa-music"
        when "comedy"
         "fa fa-smile-o"
        when "quiz"
         "fa fa-question-circle"
        when "party"
         "fa fa-glass"
        when "football"
         "fa fa-futbol-o"
        when "poetry"
         "fa fa-leaf"
        when "talk"
         "fa fa-commenting-o"
        when "magic"
         "fa fa-magic"
        when nil
         "<%= 'x' %>"
      end

  end












end
# FINAL end TAG


