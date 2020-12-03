require "bigdecimal"

class Expense
  attr_reader :title, :amount, :category

  #keyword arguments
  def initialize(title:, date:, amount:, category:)
    @title = title
    @date = Date.parse(date)
    @amount = amount.to_f
    @category = category
  end

  def to_s
    "#{category.name}\t#{date}\t#{title}\t#{amount}"
  end

  def date
    "#{@date.day}/#{month}"
  end

  def month
    "#{@date.month}/#{@date.year}"
  end

end