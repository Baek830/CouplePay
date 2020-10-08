class UsersController < ApplicationController
  before_action :find_user

  def show
    @incomes = @user.incomes
    @outgoes = @user.outgoes
    @total_income = 0

  end
  
  private
  def find_user
    @user = User.find(params[:id])
  end

  def cal_income_total(income_values)
    income_total = 0
    income_values.each do |income_value|
      income_total += 


end
