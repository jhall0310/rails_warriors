class BlogsController < ApplicationController

  before_filter :authorize

  def index
    @blogs = Blog.all
  end

  def update
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
  if blog.save
    redirect_to blogs_path
  else
    flash[:error] = blog.errors.full_messages
    redirect_to new_blog_path
  end
  end

  def destroy
  end

  private
def blog_params
  params.require(:blog).permit(:blog_title, :blog_content)
end


end
