class WebSitesController < ApplicationController
  def show
  	@web_site=WebSite.find(params[:id])
  end

  def edit
  	@web_site=WebSite.find(params[:id])
  end

  def update
  	@web_site=WebSite.find(params[:id])
  	@web_site.update_attributes(params[:web_site])
  	render :action => :edit
  end
end