class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:title, :start_date, :end_date, :all_day, :memory))
    if @user.save
      flash[:success] = "スケジュールを新規登録しました"
      redirect_to :users
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:title, :start_date, :end_date, :all_day, :memory))
      flash[:success] = "編集が完了しました"
      redirect_to :users
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "スケジュールを削除しました"
    redirect_to :users
  end

  private
  def user_params
    params.require(:user).permit(
      :title,
      :start_date,
      :end_date,
      :all_day,
      :memory
    )
  end
end
