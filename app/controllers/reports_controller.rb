class ReportsController < ApplicationController
  def index
    @incomes = Income.all
    @expenses = Expense.all

    @total_income = @incomes.sum(:amount)
    @total_expense = @expenses.sum(:amount)
    @net_profit = @total_income - @total_expense
  end
end
