class Api::PlaythrusController < ApplicationController
  def index
    render json: Playthru.all
  end

  def create
    playthru = Playthru.new(playthru_params)
    if playthru.save
      render json: playthru
    else
      render json: { message: playthru.errors }, status: 400
    end
  end

  def show
    render json: Playthru.find_by(id: params[:id])
  end

  private

  def playthru_params
    params.require(:playthru).permit(:name, :clicks, :start, :end, :path)
  end
end