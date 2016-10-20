class CarsController < ApplicationController
  def index
  end

  def create
    car = Vehicle.new(params[:make], params[:model_year])
    session[:car] = car.to_yaml
    redirect_to '/cars/status'
  end

    def status
     @car = YAML.load(session[:car])
  end

  def accelerate
  @car = YAML.load(session[:car])
  @car.accelerate
  session[:car] = @car.to_yaml
  render '/cars/status'
end
  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    render '/cars/status'
  end

  def lights
  @car = YAML.load(session[:car])
  @car.toggle
  session[:car] = @car.to_yaml
  render '/cars/status'
  end
end
