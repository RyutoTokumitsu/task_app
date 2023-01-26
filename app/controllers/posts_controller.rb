class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :start_date, :end_date, :all_day, :memory))
    if @post.save
      flash[:success] = "スケジュールを新規登録しました"
      redirect_to :posts
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_date, :end_date, :all_day, :memory))
      flash[:success] = "編集が完了しました"
      redirect_to :posts
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = "スケジュールを削除しました"
    redirect_to :posts
  end

  private
  def post_params
    params.require(:post).permit(
      :title,
      :start_date,
      :end_date,
      :all_day,
      :memory
    )
  end
end
