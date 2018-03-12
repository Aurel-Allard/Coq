class Pricing
  def initialize(start_date, end_date, people_count)
    @start_date = start_date
    @end_date = end_date
    @people_count = people_count
  end

  def number_of_days
    (@end_date - @start_date).to_i
  end

  def amount
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
