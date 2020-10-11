class UsersController < ApplicationController
  before_action :find_user

  def show
    @incomes = @user.incomes
    @outgos = @user.outgos
    @mixed_array = @incomes | @outgos
    @mixed_array.sort_by! { |a| a[:date]}
    @total_income = 0
  end
  
  private
  def find_user
    @user = User.find(params[:id])
  end



end
