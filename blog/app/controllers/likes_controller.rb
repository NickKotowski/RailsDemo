class LikesController < ApplicationController
  def index

  end

  def new
    set_tweeet
    set_user
    @like = Like.new(tweeet: @tweeet, user_id: @user.id)
    @like.save
    redirect_to tweeets_url
  end

  def destroy
    set_tweeet
    set_user
    @like_to_be_deleted = Like.where(:user_id => @user.id, :tweeet_id => @tweeet.id)
    Like.delete(@like_to_be_deleted)
    redirect_to tweeets_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeet
      @tweeet = Tweeet.find(params[:tweeet])
    end

    def set_user
      @user = User.find(params[:user])
    end

end
