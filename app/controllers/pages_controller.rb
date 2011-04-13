class PagesController < ApplicationController

  caches_page :index, :tour, :prices

  def index
    menu_item :home
  end

  def tour
    menu_item :tour
  end

  def prices
    menu_item :prices
  end

end
