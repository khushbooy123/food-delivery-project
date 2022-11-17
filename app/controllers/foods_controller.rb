class FoodsController < InheritedResources::Base

  private

    def food_params
      params.require(:food).permit(:name, :price, :image, :category_ids => [])
    end

end
