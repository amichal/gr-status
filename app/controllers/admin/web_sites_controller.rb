class Admin::WebSitesController < Admin::BaseController
  def sort
    params[:website].each_with_index do |id, index|
      WebSite.update_all({sort_order: index+1}, {id: id})
    end
    render nothing: true
  end
end