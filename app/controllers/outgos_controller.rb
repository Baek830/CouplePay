class OutgosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  def new
    @outgo = Outgo.new
  end
  def create
    @outgo = Outgo.new(outgo_params)
    if @outgo.save
      redirect_to user_path(id: current_user.id)
    else
      render :new
    end
  end

  private
  def outgo_params
    params.require(:outgo).permit(
      :name,
      :date,
      :price,
      :category_id
    ).merge(user_id: current_user.id)
  end
end
