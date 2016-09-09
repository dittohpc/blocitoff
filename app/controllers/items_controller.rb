class ItemsController < ApplicationController
  def show
  end

  def create
    @user = current_user
    @item = current_user.items.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
