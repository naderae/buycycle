class UsersController < ApplicationController

  def new
    @user = User.new

    @rating = Rating.new

  end

  def create
    user = User.new(user_params)
    if user.save
      UserMailer.registration_confirmation(user).deliver
      session[:user_id] = user.id
      flash[:notice] = "Account successfully created"
      redirect_to '/home'
    else
      flash[:notice] = 'Sorry Try Again'
      redirect_to '/'
    end

    @rating = Rating.new

  end


  def index
    @users = User.all
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @conversations = Conversation.all
    @ratings = Rating.all

    # @conversation.recipient, @conversation.sender

  end

  def update
    @user = User.find(params[:id])
    @user.rating = params[:user][:rating]

    if @user.save
      flash[:notice] = 'Your Rating has successfully been created'
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "Rating failed to save"
      render user_path(@user.id)
    end

  end




  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end


end
