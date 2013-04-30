class WebSitesController < ApplicationController
  def show
  	@web_site=WebSite.find(params[:id])
  end
end