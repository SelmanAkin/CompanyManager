class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @total_income = Income.sum(:amount)
    @total_expense = Expense.sum(:amount)
    @net_profit = @total_income - @total_expense
  end
end
