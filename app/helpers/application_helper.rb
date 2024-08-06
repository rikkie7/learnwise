module ApplicationHelper
  def format_hour(datetime)
    datetime.strftime("%H:%M")
  end

  def format_day(datetime)
    datetime.strftime("%d/%m/%Y")
  end

  def day_of_week(datetime)
    datetime.strftime("%A")
  end

end
