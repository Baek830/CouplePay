class IncomesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  def new
    @income = Income.new
  end
  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def income_params
    params.require(:income).permit(
      :name,
      :date,
      :price,
      :category_id
    ).merge(user_id: current_user.id)
  end
end
