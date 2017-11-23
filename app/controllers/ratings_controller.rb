class RatingsController < ApplicationController

def index

end


def new
  @rating = Rating.new
  @user = User.find(params[:user_id])
end

def create
  @rating = Rating.new
  @user = User.find(params[:user_id])

  @rating.value = params[:rating][:value]
  @rating.user_id = @user.id

  if @rating.save
    flash[:notice] = 'Your Rating has successfully been created'
    redirect_to user_path(@user)
  else
    flash[:alert] = "Post failed to save"
    render new_user_rating_path(@user)
  end
end

def edit

end


def update

end

def destroy

end

end
