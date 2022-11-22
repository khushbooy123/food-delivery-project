class OwnerController < ApplicationController
  def index
    @shops = Shop.all
  end
  def show
    @shop = Shop.find(params[:id])
  end
  def shop_params
    params.require(:shop).permit(:name, :ShopName, :OpeningTime, :ClosingTime, :Status, :user_id)
  end
end
