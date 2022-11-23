class OwnerController < ApplicationController
  def index
    @shops = Shop.all
  end

end
