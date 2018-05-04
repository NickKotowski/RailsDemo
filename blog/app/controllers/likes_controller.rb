class LikesController < ApplicationController
  def index

  end

  def new
    @tweeet = Tweeet.find(params[:tweeet])
    @user = User.find(params[:user])
    @like = Like.new(tweeet: @tweeet, user_id: @user.id)
    @like.save
    redirect_to tweeets_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeet

    end

end
