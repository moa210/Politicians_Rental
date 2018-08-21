class ItemController < ApplicationController
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
    if @item.save
      redirect_to item_path(@item)
    else
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
    params.require(:item).permit(:description, :price)
  end

end
end
