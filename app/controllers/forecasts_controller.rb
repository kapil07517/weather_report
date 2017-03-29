class ForecastsController < ApplicationController
  
  # GET '/'
  def new

  end
  
  # POST '/forecast'
  def create
    @forecast = Forecast.request(params[:forecast])
    unless @forecast
      redirect_to root_path
    end
  end
end
