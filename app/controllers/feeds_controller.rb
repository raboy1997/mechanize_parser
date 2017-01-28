class FeedsController < ApplicationController

  def index
    @feeds = Feed.paginate(:page => params[:page], :per_page => 30)

  end
end
