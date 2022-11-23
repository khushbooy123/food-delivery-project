class CustomerController < ApplicationController
  def index
    @shops = Shop.all
  end
  def view
    @foods = Food.all
  end
  def searchfood
    @food = Food.where("name LIKE ?","%" + params[:q]+ "%" )
  end
end
