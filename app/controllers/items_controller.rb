class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :update, :show, :destroy]

  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def show
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to user_path(current_user)
    else
      # raise
      render :new
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

private

  def find_item
   @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:description, :price, :category)
  end

end
