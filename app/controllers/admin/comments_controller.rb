class Admin::CommentsController < Admin::AdminController

  menu_item :posts
  before_filter :load_post

  def index
    @comments = @post.comments
    respond_with @comments
  end

  def edit
    @comment = @post.comments.find(params[:id])
  end

  def update
    @comment = @post.comments.find(params[:id])
    flash[:notice] = 'Comment was successfully updated.' if @comment.update_attributes(params[:comment])
    respond_with @comment, :location => [:admin, @post, :comments]
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    respond_with @comment, :location => [:admin, @post, :comments]
  end

protected
  def load_post
    @post = Post.find(params[:post_id])
  end
end