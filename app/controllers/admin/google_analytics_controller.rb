class Admin::GoogleAnalyticsController < Admin::BaseController
  def index
    id_list = available_analytics_accounts
    if params[:q].present?
      id_list = id_list.select do |id|
        id[:text].include? params[:q]
      end
    end
    render :json => id_list
  end
  def show
    id_list = available_analytics_accounts
    id_list = id_list.detect do |id|
      id[:id].to_s === params[:id].to_s
    end
    render :json => id_list
  end

  private

  def available_analytics_accounts
    id_list = Rails.cache.fetch('GA_accounts', :expires_in => 10.minute) do
      ga = Gattica.new(APP_CONFIG['google_analytics'].symbolize_keys)
      #ga.accounts
      id_list = []
      ga.accounts.each do |account|
        id_list << {
          :id => account.profile_id,
          :text => "#{account.account_name}, #{account.title}"
        }
      end
      id_list
    end
  end
end