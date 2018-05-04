class LikesController < ApplicationController
  def index

  end

  def new
    @tweeet = params[:id]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeet

    end

end
