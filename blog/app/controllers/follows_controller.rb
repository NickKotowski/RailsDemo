class FollowsController < ApplicationController

  def index

  end

  def new_follow
    set_user
    @follow = Follow.new(user: @user, user_id: @user.id, followee: @followee.id)
    @follow.save!
    redirect_to tweeets_url
  end

  def remove_follow
    set_user
    @follow_to_be_destroyed = Follow.where(user: @user, user_id: @user.id, followee: @followee.id)
    Follow.delete(@follow_to_be_destroyed)
    redirect_to tweeets_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:follower])
      @followee = User.find(params[:followee])
    end


end
