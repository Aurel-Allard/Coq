class Pricing
  def initialize(journey, start_date, end_date)
    @journey = journey
    @start_date = start_date
    @end_date = end_date
  end

  def number_of_days
    (@end_date - @start_date).to_i
  end

  def base_price
    case number_of_days
    when 0
      0 #89
    when 1
      0 #119
    when 2
      0 #169
    when 3..(1.0/0.0)
      0 #65 * number_of_days
    end
  end

  def transport
    if @journey.detail.travel_with_car
      case number_of_days
      when 0
        0 #-25
      when 1
        0 #-30
      when 2
        0 #-40
      when 3..(1.0/0.0)
        0 #-40
      end
    else
      0
    end
  end

  def housing
    @journey.detail.housing_type == 'Hébergement de charme' ? 0 #25 * number_of_days : 0
  end

  def activity
    @journey.detail.activity_type != 'Aucune' ? 0 #18 : 0
  end

  def amount
    total = base_price + transport + housing + activity
    ((total / 100) % 10 * 100 + (total / 10) % 10 * 10 + 9) * 100
  end
end
