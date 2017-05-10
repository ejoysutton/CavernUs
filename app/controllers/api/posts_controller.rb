class Api::PostsController < ApplicationController
  # GET /api/posts
  def index
    @posts = Post.all

    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post.to_json(:include =>  :users )

  end

  def update

    @post = Post.find(params[:id])

    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: @post.error, status: :unprocessable_entity
    end
  end

  def create
    @post = Post.new(new_post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    render json: '', status: :no_content
  end

  private
  def post_params
    params
        .permit(:title, :content)

  end

  def new_post_params
    params.require(:post)
        .permit(:title, :content, :mine_id)
        .merge(user_id: current_user.id)
  end


end