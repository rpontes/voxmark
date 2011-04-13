class PostsController < ApplicationController

  before_filter :load_categories

  caches_page :show

  def index
    @posts = Post.scoped
    @posts = @posts.search(params[:search]) if params[:search]
    @posts = @category.posts if @category.present?
    @posts = @posts.published
    @posts = @posts.paginate(:page => params[:page])

    respond_with @posts do |format|
      format.atom
    end
  end

  def show
    @post = Post.published.find(params[:id])
    respond_with @post
  end

protected
  def load_categories
    @categories = Category.all
    @category = Category.find(params[:category_id]) if params[:category_id]
  end

end