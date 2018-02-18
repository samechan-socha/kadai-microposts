class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favo(micropost)
    flash[:success] = "お気に入りに登録しました"
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavo(micropost)
    flash[:success] = "お気に入り登録を解除しました"
    redirect_to :back
  end
end
