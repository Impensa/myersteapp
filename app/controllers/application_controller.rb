class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :site_search

  def site_search
    @q= Post.ransack(params[:q])
    @posts=@q.result(distinct: true)
  end
  
  helper_method :all_categories

  def all_categories
  	@categories = Category.all
  end

  helper_method :all_posts

  def all_posts
  	@posts = Post.all
  end

end
