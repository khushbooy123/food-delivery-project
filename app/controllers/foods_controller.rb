class FoodsController < InheritedResources::Base

 def search
   @food = Food.where("name LIKE ?","%" + params[:q]+ "%" )
    # if params[:search].blank?
    # redirect_to foods_path and return
    # else 
    #   @perameter = params[:search].downcase
    #   @results = Category.all.where("lower(name) LIKE :search", search: "%#{@perameter}%")
    # end
 end

  private

    def food_params
      params.require(:food).permit(:name, :price, :image, :category_ids => [])
    end

end
