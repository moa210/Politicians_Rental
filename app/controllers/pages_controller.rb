class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @items = Item.first(8)
  end
end
