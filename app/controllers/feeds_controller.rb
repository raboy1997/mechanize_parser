# class
class FeedsController < ApplicationController
  def index
    @feeds = Feed.paginate(page: params[:page], per_page: 8).reverse_order
  end
end
