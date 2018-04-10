class Pricing
  def initialize(journey, start_date, end_date, people_count)
    @journey = journey
    @start_date = start_date
    @end_date = end_date
    @people_count = people_count
  end

  def number_of_days
    (@end_date - @start_date).to_i
  end

  def base_price
    case number_of_days
    when 0
      90
    when 1
      120
    when 2
      170
    when 3..(1.0/0.0)
      65
    end
  end

  def transport(base_price)
    if @journey.detail.travel_with_car?
      case number_of_days
      when 0
        90
      when 1
        120
      when 2
        170
      when 3..(1.0/0.0)
        65
      end
    end
  end

  def housing
    29 * number_of_days if @journey.detail.housing_type == 'Hébergement de charme'
  end

  def activity
    18 if @journey.detail.activity_type != 'Aucune'
  end

  def amount
    #base_price + housing + activity
    100
  end
end
