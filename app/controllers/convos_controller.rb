class ConvosController < ApplicationController

  def index
    @convos = Convo.all
  end

  def new
    @convo = Convo.new
   blog_id = params[:blog_id]
   @blog = Blog.find_by(id: blog_id)
  end

  def create
      blog = Blog.find(params[:blog_id])
      new_convo = Convo.new(convo_params)
  if new_convo.save
    blog.convos << new_convo
    redirect_to blog_path_path(blog, new_convo)
  else
    flash[:error] = new_convo.errors.full_messages.join(", ")
    redirect_to new_blog_convo_path(blog)
  end
  end

  def edit
  end

  def destory
  end

  def update
  end

  def convo_params
     params.require(:convo).permit(:content)
   end



end
