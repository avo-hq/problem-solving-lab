class CarsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @cars = pagy(Car.all, limit: 4)
  end
end
