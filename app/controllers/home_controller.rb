class HomeController < ApplicationController
  def index
    @houses = House.latest_houses
    @complex_buildings = ComplexBuilding.latest_complexes
    @commercial_units = CommercialUnit.latest_commercials
  end
end
