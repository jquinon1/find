class TravelsController < ApplicationController
    before_action :set_travel, only: [:show, :update, :destroy]
    #before_action :authorize
  def index
    user = current_user
    @travels = user.travels
  end

  def new
    @last = Travel.last
    @travel = current_user.travels.build
  end

  def create
    @travel = current_user.travels.create!(travel_params)
    @id_travel = @travel.id
    @done = false
    redirect_to new_user_travel_url
  end

  def show
    @travel
  end

  def update
    @travel.update(travel_params)
    redirect_to new_user_travel_url
  end

  def destroy
    @travel.destroy
    redirect_to user_travels_path
  end

  private

  def set_travel
    @travel = Travel.find(params['id'])
  end

  def travel_params
    params.require(:travel).permit(:title,:done)
  end
end
