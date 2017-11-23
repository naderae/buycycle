class PostsController < ApplicationController


  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end


  def create
    @post = Post.new
    @user = User.find(params[:user_id])

    @post.post_type = params[:post][:post_type]
    @post.service_type = params[:post][:service_type]
    @post.content = params[:post][:content]
    @post.user_id = @user.id

    if @post.save
      flash[:notice] = 'Your Post has successfully been created'
      redirect_to home_path
    else
      flash[:alert] = "Post failed to save"
      render new_user_post_path(@user.id)
    end

  end

  def edit
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])


    if @post.update(
      post_type: params[:post][:post_type],
      service_type: params[:post][:service_type],
      content: params[:post][:content])

        flash[:notice] = 'Your Comment has successfully updated'
        redirect_to home_path
      else
        flash[:alert] = "Comment failed to save"
        render new_user_post_path(@user.id)
      end
    end

    def destroy
      @user = User.find(params[:user_id])
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to home_path
    end

end
