class DemandsController < ApplicationController
  before_action :authenticate_user!
  respond_to :json

  def create
    @demand = Demand.new(
      demand_params.merge(
        status: :pending,
        user: current_user
      )
    )

    if @demand.save
      render status: :created
    else
      render status: :bad_request, json: { error: 'error!' }
    end
  end

  def index
    @demands = Demand.all.page(params[:page] || 1).per(10).order(id: :desc)

    render status: :ok, json: { demands: @demands }
  end

  def show
    @demand = Demand.find(params[:id])

    render status: :ok, json: { demand: @demand }
  end

  private

  def demand_params
    params.require(:demand).permit(:title, :description, :image, :latitude, :longitude)
  end
end
