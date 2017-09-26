class LikesController < ApplicationController
  def create
    current_user.like(shout)
    redirect_to root_path
  end

  def destroy
    current_user.unlike(shout)
    redirect_to root_path
  end

  private

  def shout
    Shout.find(params[:id])
  end
end
