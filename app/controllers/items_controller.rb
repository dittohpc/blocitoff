class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = current_user.items.create(item_params)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
