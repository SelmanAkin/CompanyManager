class IncomesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_income, only: %i[show edit update destroy]

  def index
    @incomes = Income.all
  end

  def show
  end

  def new
    @income = Income.new
  end

  def edit
  end

  def create
    @income = Income.new(income_params)

    respond_to do |format|
      if @income.save
        format.html { redirect_to @income, notice: "Income was successfully created." }
        format.json { render :show, status: :created, location: @income }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to @income, notice: "Income was successfully updated." }
        format.json { render :show, status: :ok, location: @income }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @income.destroy!

    respond_to do |format|
      format.html { redirect_to incomes_path, status: :see_other, notice: "Income was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_income
    @income = Income.find(params[:id])
  end

  def income_params
    params.require(:income).permit(:customer_id, :amount, :date, :description)
  end
end
