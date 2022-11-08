class User < ActiveRecord::Base
    has_many :products,  through: :reviews
    has_many :reviews 

    def favorite_product
        self.reviews.maximum(:star_rating)

    end

    def remove_reviews(product)
        self.reviews.where(product: product).destroy_all


    end
end