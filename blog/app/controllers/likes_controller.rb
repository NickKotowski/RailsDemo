class LikesController < ApplicationController
  def index

  end

  def new
    @tweeet = params[:tweeet]
    @user = params[:user]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeet

    end

end
