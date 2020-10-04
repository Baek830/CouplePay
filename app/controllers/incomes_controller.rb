class IncomesController < ApplicationController
  def new
    @income = Income.new
  end
  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to user_path(id: current_user.id)
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
