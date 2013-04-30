class Admin::ClientsController < Admin::BaseController
  def show
    redirect_to :action=>:edit
  end
  
  def edit
  	@client=Client.find(params[:id])
    @client.web_sites.build
  end

  def update
  	@client=Client.find(params[:id])
  	if @client.update_attributes(params[:client])
      flash[:notice] = "Changes saved."
      redirect_to :action=>:edit
    else
    	render :action => :edit
    end
  end
end