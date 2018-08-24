class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :update, :show, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        items.description @@ :query \
        OR items.category @@ :query \
        OR users.full_name @@ :query \
        OR users.email @@ :query \
      "
      @items = policy_scope(Item).joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @items = policy_scope(Item)
    end
    @users = User.all
  end

  def user_items
    @items = Item.where(user_id: current_user)
    authorize @items
  end

  def new
    @item = Item.new
    authorize @item
  end

  def edit
  end

  def show
    @booking = Booking.new
  end

  def create
    @item = Item.new(item_params)
    authorize @item
    @item.user = current_user
    if @item.save
      redirect_to items_path
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
      redirect_to items_path
    else
      render :edit
    end
  end

private

  def find_item
   @item = Item.find(params[:id])
   authorize @item
  end

  def item_params
    params.require(:item).permit(:description, :price, :category, :photo, :available)
  end

end
