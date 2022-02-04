class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc).limit(500);
    render status: 200, json: { posts: @posts }
  end

  def latest
    @posts = Post.order(created_at: :desc)
    render status: 200, json: { posts: @posts }
  end

  def search
    @keyword = params[:keyword]
    if @keyword != "" && @keyword != nil
      @posts = Post
        .where("lecture LIKE ? OR teacher LIKE ? OR category LIKE ?", "%#{@keyword}%", "%#{@keyword}%", "%#{@keyword}%")
        .order(year: :desc)
    else
      @posts = []
    end
    render status: 200, json: { posts: @posts }
  end

  def like
    @id = params[:id]
    @post = Post.find(@id)
    if @post != nil
      @post.update(like: @post.like + 1)
      render status: 200, json: { posts: @post }
    else
      response_bad_request
    end
  end

  def create
    @posts = Post.new(
      lecture: params[:lecture],
      teacher: params[:teacher],
      category: params[:category],
      year: params[:year],
      term: params[:term],
      evaluation: params[:evaluation],
      cause: params[:cause],
      comment: params[:comment],
      like: 0,
    )
    if @posts.save
      response_success(:post, :create)
    else
      response_internal_server_error
    end
  end


end
