class StoreDataController < ApplicationController

  private
  def store_datum_params
    params.require(:store_datum).permit(:name, :description, :category, :url)
  end
end
