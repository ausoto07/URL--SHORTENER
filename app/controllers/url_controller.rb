class UrlController < ApplicationController
  def index
    @urls = Url.all
    @url = Url.new
  end

  def show
    # @url = set_url
    @url = set_url_by_short
    redirect_to @url.name
  end

  def task_params
    id = params[:id]
    @url = Url.find_by_lookup(id)
  end

  def create
    @url = Url.new(url_params)
    @url.short = Url.random_string
    @url.save
    redirect_to root_path
  end


private
  def set_url
    @url = Url.find(params[:id])
  end

  def set_url_by_short
    @url = Url.find_by(short: params[:short])
  end

  def url_params
    params.require(:url).permit(:name)
  end

end
