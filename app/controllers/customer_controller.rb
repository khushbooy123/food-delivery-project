class CustomerController < ApplicationController
  def index
    @shops = Shop.all
  end
end
