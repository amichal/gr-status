class Admin::ClientsController < Admin::BaseController
  def edit
  	@client=Client.find(params[:id])
  end

  def update
  	@client=Client.find(params[:id])
  	@client.update_attributes(params[:client])
  	render :action => :edit
  end
end