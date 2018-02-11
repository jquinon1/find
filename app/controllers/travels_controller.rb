class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :update, :destroy]

  def index
    @travels = Travel.all
  end

  def create
    @travel = Travel.create!(travel_params)
  end

  def show
    @travel
  end

  def update
    @travel.update(travel_params)
  end

  def delete
    @travel.destroy
  end

  private

  def set_travel
    @travel = Travel.find(params['id'])
  end

  def travel_params
    params.permit(:title,:created_by,:done)
  end
end
