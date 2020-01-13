class Api::FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @follow.follower_id = current_user.id

    if @follow.save
      render "api/follows/show"
    else
      render json: @follow.errors.full_messages, status: 401
    end
  end

  def destroy
    @follow = Follow.find(params[:id])

    if @follow
      @follow.destroy
      render "api/follows/show"
    else
      render json: @follow.errors.full_messages, status: 401
    end
  end

  def index
    # @follows = Follow.where()
    @follows = Follow.all
  end

  def show
    @follow = Follow.find(params[:id])
  end

  private
  def follow_params
    params.require(:follow).permit(:follower_id, :followed_id)
  end

end
