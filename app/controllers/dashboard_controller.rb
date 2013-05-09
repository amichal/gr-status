class DashboardController < ApplicationController
  def index
    @clients = Client.includes(:web_sites).order("sort_order").all
  end
end
