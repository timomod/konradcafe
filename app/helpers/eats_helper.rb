module EatsHelper

  # Match drop down terms in Eats form with Font-Awsome icons
     def menu_icon_helper(event_icon)
        icon = case event_icon
          when "coffee"
           "fa fa-coffee"
          when "juice"
           "fa fa-apple"
          when "beer"
           "fa fa-beer"
          when "wine"
           "fa fa-glass"
          when "spirit"
           "fa fa-flask"
          when "pie"
           "fa fa-pie-chart"
          when "salad"
           "fa fa-leaf"
          when "sandwich"
           "fa fa-bars"
          when nil
           "<%= 'x' %>"
        end
      end

end
