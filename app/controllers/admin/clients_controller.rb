class Admin::ClientsController < Admin::BaseController
  def index
    @clients = Client.order("sort_order")
  end

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

  def sort
    params[:client].each_with_index do |id, index|
      Client.update_all({sort_order: index+1}, {id: id})
    end
    render nothing: true
  end
end