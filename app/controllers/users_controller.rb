class UsersController < ApplicationController
  before_action :find_user

  def show
    @incomes = @user.incomes
    @outgoes = @user.outgoes
  end
  
  def find_user
    @user = User.find(params[:id])
  end
end
