class SpendingReport < Compendium::Report
  option :starting_on, :date, default: -> { '2014-01-01' }
  option :ending_on, :date, default: -> { '2014-03-31' }

  query :spending do |params|
    Spending.select('spendings.created_at, amount, spending_categories.name AS category_name')
      .joins(:category)
      .where("spendings.created_at BETWEEN ? AND ?", params[:starting_on], params[:ending_on])
      .order("spendings.created_at ASC")
  end

  query :spending_per_day, through: :spending do |results|
    spending_per_day = {}
    results.each do |row|
      created_at = row[:created_at].to_date
      spending_per_day[created_at] ||= 0
      spending_per_day[created_at] += row[:amount]
    end

    spending_per_day.map{ |date, amount| { date: date, amount: amount } }
  end

  query :spending_per_month, through: :spending do |results|
    spending_per_month = {}
    results.each do |row|
      month = row[:created_at].strftime("%B %Y")
      spending_per_month[month] ||= 0
      spending_per_month[month] += row[:amount]
    end

    spending_per_month.map{ |month, amount| { month: month, amount: amount } }
  end

  query :spending_per_category, through: :spending do |results|
    spending_per_category = {}
    results.each do |row|
      category = row[:category_name]
      spending_per_category[category] ||= 0
      spending_per_category[category] += row[:amount]
    end

    spending_per_category.map{ |category, amount| { category: category, amount: amount } }
  end

  metric :total, through: :spending do |results|
    results.map{ |r| r[:amount] }.sum
  end
end