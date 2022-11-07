class User < ActiveRecord::Base
    has_many :products,  through: :reviews
    has_many :reviews 
end