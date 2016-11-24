require "date"


module EventsHelper



  # Checks if current day matches the weekday in the curry menu calendar
  # Returns red background class.
  def weekday_check(day)
    if
      Date.today.strftime("%A").downcase == day.downcase
      "bg-red-text-white"
    end
  end


  # Check if date today == date of event.
  # Must be inside .each loop with |event|
  def event_today?(event)
    Date.today == event.start_date
  end

  # Checks current time to see if Konrads is open
  def opening_times
      mon1 = @opening_hours.find(1).open_at
      mon2 = @opening_hours.find(1).open_until
      tue1 = @opening_hours.find(2).open_at
      tue2 = @opening_hours.find(2).open_until
      wed1 = @opening_hours.find(3).open_at
      wed2 = @opening_hours.find(3).open_until
      thu1 = @opening_hours.find(4).open_at
      thu2 = @opening_hours.find(4).open_until
      fri1 = @opening_hours.find(5).open_at
      fri2 = @opening_hours.find(5).open_until
      sat1 = @opening_hours.find(6).open_at
      sat2 = @opening_hours.find(6).open_until
      sun1 = @opening_hours.find(7).open_at
      sun2 = @opening_hours.find(7).open_until


      #Weekdays   Sun-0       Mon-1       Tues-2      Wed-3       Thu-4       Fri-5       Sat-6
      schedule = [[sun1,sun2],[mon1,mon2],[tue1,tue2],[wed1,wed2],[thu1,thu2],[fri1,fri2],[sat1,sat2]]
      # Weekday number Sun - Sat => 0 - 6
      day_num = Date.today.strftime("%w").to_i
      # The current hour. Ex.: 17:43 => 17
      time_now = Time.now.strftime("%H").to_i

      # Extract todas's and yesterday's opening hours from schedule
      todays_schedule = schedule[day_num]
      yesterdays_schedule = schedule[day_num - 1]

      # Check if its after (more than) 5AM right_now && it the shop is open (up until midnight)
      if time_now > 5 && (time_now >= todays_schedule[0] && time_now < 24)
        # FYI - '%.2f' transfroms a number into a 2 decimal float
          "Open now: #{'%.2f' % todays_schedule[0]} - #{'%.2f' % todays_schedule[1]}"
        # Elseif: Check closed past midnight YESTERDAY && if right_now is less than Closing time of schedule yesterday.
        elsif yesterdays_schedule[1] < 5 && time_now < yesterdays_schedule[1]
          "Open tonight until: #{'%.2f' % todays_schedule[1]} AM"
        # Else
        else
          "Closed now: #{'%.2f' % todays_schedule[0]} - #{'%.2f' % todays_schedule[1]}"
      end
   end

    # Match drop down terms in Events form with Font-Awsome icons
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

  # def event_count_helper
  #  0

  # end





end
# FINAL end TAG


