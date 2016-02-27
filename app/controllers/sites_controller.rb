class SitesController < ApplicationController
  def index
    @site = Site.new
        @sites = Site.all
        
        respond_to do |format|
          format.html
          format.js
        end               
  end

  def edit
  end

  def show
  end

  def create
  end

  def destroy
  end
end
