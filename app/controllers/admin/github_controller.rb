class Admin::GithubController < Admin::BaseController
  def index
    repo_list = available_github_repositories
    if params[:q].present?
      repo_list = repo_list.select do |repo|
        repo[:text].include? params[:q]
      end
    end
    render :json => repo_list
  end
  def show
    repo_list = available_github_repositories
    repo_list = repo_list.detect do |repo|
      repo[:id].to_s === params[:id].to_s
    end
    render :json => repo_list
  end

  private

  def available_github_repositories
    repo_names = Rails.cache.fetch('github_repositories', :expires_in => 10.minute) do
      client = Octokit::Client.new(APP_CONFIG['github'].symbolize_keys)
      repo_names = []
      client.get('user/orgs').each do |org|
        client.org_repos(org.login).each do |repo|
          repo_names << {
            :id => repo["full_name"],
            :text => repo["full_name"]
          }
        end
      end
      return repo_names
    end
  end
end