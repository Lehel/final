class WallTextsController < ApplicationController

  def new
    @walltext = WallText.new
  end
  
  def create
    @walltext = WallText.new(params[:walltext])
  end

end
