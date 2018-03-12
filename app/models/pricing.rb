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
      90 * @people_count
    when 1
      120 * @people_count
    when 2
      170 * @people_count
    when 3..(1.0/0.0)
      65 * @people_count
    end
  end
end
