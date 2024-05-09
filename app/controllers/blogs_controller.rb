class BlogsController < ApplicationController
  before_action :authenticate_user!, except:[:index]
  def index
    @blogs = Blog.all
    @users = User.all
  end

  def show
    @blog = Blog.find(params[:id])
    @users = User.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      redirect_to @blog
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    redirect_to root_path, status: :see_other
  end

  private
   def blog_params
     params.require(:blog).permit(:title,:body,:status).merge(user_id: current_user.id)
   end
end
