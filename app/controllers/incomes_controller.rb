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

end
