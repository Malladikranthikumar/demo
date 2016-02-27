class CountriesController < ActionController::Base
  
  def index
  @countries = Country.all
  end

end